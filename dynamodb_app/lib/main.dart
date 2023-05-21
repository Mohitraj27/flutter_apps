import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
//import 'package:aws_credential_provider_env/aws_credential_provider_env.dart';
// ignore: depend_on_referenced_packages
import 'package:aws_dart_sdk/aws.dart';

void main() async {
  // Create a DynamoDB client
  return insertData();
}

Future<void> insertData() async {
  final accessKey =
      'AKIA4KMAGYAVINKH72FE	udx+8K8iR99BBVV2fiRW6fBpUvICocNN5tksNVA';
  final secretKey = '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';

  final credentials = AwsClientCredentials(accessKey, secretKey);

  final dynamoDB = DynamoDB(credentials, 'us-east-1');

  final tableName = 'CRUD_Mohit';

  final item = {
    'id': {'S': '1'},
    'name': {'S': 'John Doe'},
    'age': {'N': '30'},
  };

  final putItemInput = PutItemInput(tableName: tableName, item: item);

  await dynamoDB.putItem(putItemInput);
}

class DynamoDB {
  DynamoDB(AwsClientCredentials credentials, String s);

  putItem(putItemInput) {}
}

class AwsClientCredentials {
  AwsClientCredentials(String accessKey, String secretKey);
}
