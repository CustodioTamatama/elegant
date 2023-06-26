// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDb {
  static final _firestore = FirebaseFirestore.instance;

  static Future<bool> inserir(
    String collection,
    String docId,
    Map<String, dynamic> data,
  ) async {
    try {
      await _firestore.collection(collection).doc(docId).set(data);
      return true;
    } on FirebaseException catch (e) {
      log(e.message!);
    }

    return false;
  }

  static Future<QuerySnapshot<Map<String, dynamic>>> obterTodos(
    String collection,
  ) async {
    return await _firestore.collection(collection).get();
  }

  static Future<QuerySnapshot<Map<String, dynamic>>> obterPorCampo(
    String collection,
    String key,
    String field,
  ) async {
    return await _firestore
        .collection(collection)
        .where(field, isEqualTo: key)
        .get();
  }

  static Future<DocumentSnapshot> obterPorId(
    String collection,
    String id,
  ) async {
    return await _firestore.collection(collection).doc(id).get();
  }

  static Future<bool> delete(
    String collection,
    String id,
  ) async {
    try {
      await _firestore.collection(collection).doc(id).delete();

      return true;
    } on FirebaseException catch (e) {
      log(e.message!);
    }

    return false;
  }
}
