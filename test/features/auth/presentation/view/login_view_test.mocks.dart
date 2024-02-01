// Mocks generated by Mockito 5.4.4 from annotations
// in student_management_hive_api/test/features/auth/presentation/view/login_view_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:student_management_hive_api/core/failure/failure.dart' as _i7;
import 'package:student_management_hive_api/features/auth/domain/entity/auth_entity.dart'
    as _i13;
import 'package:student_management_hive_api/features/auth/domain/use_case/login_usecase.dart'
    as _i11;
import 'package:student_management_hive_api/features/auth/domain/use_case/register_usecase.dart'
    as _i12;
import 'package:student_management_hive_api/features/batch/domain/entity/batch_entity.dart'
    as _i8;
import 'package:student_management_hive_api/features/batch/domain/repository/batch_repository.dart'
    as _i2;
import 'package:student_management_hive_api/features/batch/domain/use_case/get_all_batch_usecase.dart'
    as _i5;
import 'package:student_management_hive_api/features/course/domain/entity/course_entity.dart'
    as _i10;
import 'package:student_management_hive_api/features/course/domain/repository/course_repository.dart'
    as _i4;
import 'package:student_management_hive_api/features/course/domain/use_case/get_all_course_usecase.dart'
    as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeIBatchRepository_0 extends _i1.SmartFake
    implements _i2.IBatchRepository {
  _FakeIBatchRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeICourseRepository_2 extends _i1.SmartFake
    implements _i4.ICourseRepository {
  _FakeICourseRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetAllBatchUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAllBatchUsecase extends _i1.Mock
    implements _i5.GetAllBatchUsecase {
  @override
  _i2.IBatchRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeIBatchRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeIBatchRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.IBatchRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, List<_i8.BatchEntity>>> getAllBatch() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllBatch,
          [],
        ),
        returnValue:
            _i6.Future<_i3.Either<_i7.Failure, List<_i8.BatchEntity>>>.value(
                _FakeEither_1<_i7.Failure, List<_i8.BatchEntity>>(
          this,
          Invocation.method(
            #getAllBatch,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i3.Either<_i7.Failure, List<_i8.BatchEntity>>>.value(
                _FakeEither_1<_i7.Failure, List<_i8.BatchEntity>>(
          this,
          Invocation.method(
            #getAllBatch,
            [],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, List<_i8.BatchEntity>>>);
}

/// A class which mocks [GetAllCourseUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAllCourseUsecase extends _i1.Mock
    implements _i9.GetAllCourseUsecase {
  @override
  _i4.ICourseRepository get courseRepository => (super.noSuchMethod(
        Invocation.getter(#courseRepository),
        returnValue: _FakeICourseRepository_2(
          this,
          Invocation.getter(#courseRepository),
        ),
        returnValueForMissingStub: _FakeICourseRepository_2(
          this,
          Invocation.getter(#courseRepository),
        ),
      ) as _i4.ICourseRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, List<_i10.CourseEntity>>> call() =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValue:
            _i6.Future<_i3.Either<_i7.Failure, List<_i10.CourseEntity>>>.value(
                _FakeEither_1<_i7.Failure, List<_i10.CourseEntity>>(
          this,
          Invocation.method(
            #call,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i3.Either<_i7.Failure, List<_i10.CourseEntity>>>.value(
                _FakeEither_1<_i7.Failure, List<_i10.CourseEntity>>(
          this,
          Invocation.method(
            #call,
            [],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, List<_i10.CourseEntity>>>);
}

/// A class which mocks [LoginUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginUseCase extends _i1.Mock implements _i11.LoginUseCase {
  @override
  _i6.Future<_i3.Either<_i7.Failure, bool>> loginStudent(
    String? username,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #loginStudent,
          [
            username,
            password,
          ],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, bool>>.value(
            _FakeEither_1<_i7.Failure, bool>(
          this,
          Invocation.method(
            #loginStudent,
            [
              username,
              password,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i3.Either<_i7.Failure, bool>>.value(
                _FakeEither_1<_i7.Failure, bool>(
          this,
          Invocation.method(
            #loginStudent,
            [
              username,
              password,
            ],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, bool>>);
}

/// A class which mocks [RegisterUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockRegisterUseCase extends _i1.Mock implements _i12.RegisterUseCase {
  @override
  _i6.Future<_i3.Either<_i7.Failure, bool>> registerStudent(
          _i13.AuthEntity? entity) =>
      (super.noSuchMethod(
        Invocation.method(
          #registerStudent,
          [entity],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, bool>>.value(
            _FakeEither_1<_i7.Failure, bool>(
          this,
          Invocation.method(
            #registerStudent,
            [entity],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i3.Either<_i7.Failure, bool>>.value(
                _FakeEither_1<_i7.Failure, bool>(
          this,
          Invocation.method(
            #registerStudent,
            [entity],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, bool>>);
}