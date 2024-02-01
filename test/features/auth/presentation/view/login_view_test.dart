import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:student_management_hive_api/features/auth/domain/use_case/login_usecase.dart';
import 'package:student_management_hive_api/features/auth/domain/use_case/register_usecase.dart';
import 'package:student_management_hive_api/features/batch/domain/use_case/get_all_batch_usecase.dart';
import 'package:student_management_hive_api/features/course/domain/use_case/get_all_course_usecase.dart';


@GenerateNiceMocks([
  MockSpec<GetAllBatchUsecase>(),
  MockSpec<GetAllCourseUsecase>(),
  MockSpec<LoginUseCase>(),
  MockSpec<RegisterUseCase>()
])

void main() {
 
  
  
  testWidgets('login view ...', (tester) async {
    // TODO: Implement test
  });
}