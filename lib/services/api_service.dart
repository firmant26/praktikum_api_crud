import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class ApiService {
  final String baseUrl = "https://reqres.in/api";

  // READ (GET)
  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users?page=1'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List<dynamic> usersJson = data['data'];
      return usersJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception("Gagal memuat data pengguna");
    }
  }

  // CREATE (POST)
  Future<void> createUser(String name, String job) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      body: {'name': name, 'job': job},
    );
    if (response.statusCode != 201) {
      throw Exception("Gagal menambah pengguna");
    }
  }

  // UPDATE (PUT)
  Future<void> updateUser(String id, String name, String job) async {
    final response = await http.put(
      Uri.parse('$baseUrl/users/$id'),
      body: {'name': name, 'job': job},
    );
    if (response.statusCode != 200) {
      throw Exception("Gagal memperbarui pengguna");
    }
  }

  // DELETE
  Future<void> deleteUser(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/users/$id'));
    if (response.statusCode != 204) {
      throw Exception("Gagal menghapus pengguna");
    }
  }
}
