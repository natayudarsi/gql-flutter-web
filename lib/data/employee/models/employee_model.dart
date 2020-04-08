import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:reverse_test/data/employee/models/address_model.dart';
import 'package:reverse_test/data/employee/models/education_model.dart';
import 'package:reverse_test/data/employee/models/identity_model.dart';
import 'package:reverse_test/data/employee/models/phone_model.dart';
import 'package:reverse_test/data/employee/models/renumer_model.dart';

import 'package:reverse_test/domain/employee/entities/employee_entity.dart';

class Employee extends EmployeeEntity {
  Employee({
    @required Address address,
    @required String benefit,
    @required String birthDate,
    @required String birthPlace,
    @required int candidateId,
    @required String company,
    @required Education education,
    @required String emailAddressOffice,
    @required String emailAddressPersonal,
    @required String firstName,
    @required String fullName,
    @required String gender,
    @required Identity identity,
    @required bool isIntro,
    @required bool isSigned,
    @required bool isWNA,
    @required String jobs,
    @required String joinDate,
    @required String lastName,
    @required String middleName,
    @required String onBoardingDate,
    @required Phone phoneNumber,
    @required String recruiter,
    @required Renumer renumer,
  }) : super(
          address: address,
          benefit: benefit,
          birthDate: birthDate,
          birthPlace: birthPlace,
          candidateId: candidateId,
          company: company,
          education: education,
          emailAddressOffice: emailAddressOffice,
          emailAddressPersonal: emailAddressPersonal,
          firstName: firstName,
          fullName: fullName,
          gender: gender,
          identity: identity,
          isIntro: isIntro,
          isSigned: isSigned,
          isWNA: isWNA,
          jobs: jobs,
          joinDate: joinDate,
          lastName: lastName,
          middleName: middleName,
          onBoardingDate: onBoardingDate,
          phoneNumber: phoneNumber,
          recruiter: recruiter,
          renumer: renumer,
        );

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      address: Address.fromJson(json['address'][0]),
      benefit: json['benefit'],
      birthDate: json['birthDate'],
      birthPlace: json['birthPlace'],
      candidateId: json['candidateId'],
      company: json['company'],
      education: Education.fromJson(json['education'][0]),
      emailAddressOffice: json['emailAddressOffice'],
      emailAddressPersonal: json['emailAddressPersonal'],
      firstName: json['firstName'],
      fullName: json['fullName'],
      gender: json['gender'],
      identity: Identity.fromJson(json['identity'][0]),
      isIntro: json['isNitro'],
      isSigned: json['isSigned'],
      isWNA: json['isWNA'],
      jobs: json['jobs'],
      joinDate: json['joinDate'],
      lastName: json['lastName'],
      middleName: json['middleName'],
      onBoardingDate: json['onBoardingDate'],
      phoneNumber: Phone.fromJson(json['phoneNumber'][0]),
      recruiter: json['recruiter'],
      renumer: Renumer.fromJson(json['renumer'][0]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'benefit': benefit,
      'birthDate': birthDate,
      'birthPlace': birthPlace,
      'candidateId': candidateId,
      'company': company,
      'education': education,
      'emailAddressOffice': emailAddressOffice,
      'emailAddressPersonal': emailAddressPersonal,
      'firstName': firstName,
      'fullName': fullName,
      'gender': gender,
      'identity': identity,
      'isIntro': isIntro,
      'isSigned': isSigned,
      'isWNA': isWNA,
      'jobs': jobs,
      'joinDate': joinDate,
      'lastName': lastName,
      'middleName': middleName,
      'onBoardingDate': onBoardingDate,
      'phoneNumber': phoneNumber,
      'recruiter': recruiter,
      'renumer': renumer,
    };
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
