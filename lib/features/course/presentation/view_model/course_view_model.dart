import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_hive_api/features/course/domain/entity/course_entity.dart';
import 'package:student_management_hive_api/features/course/domain/use_case/add_course_usecase.dart';
import 'package:student_management_hive_api/features/course/domain/use_case/delete_course_usecase.dart';
import 'package:student_management_hive_api/features/course/domain/use_case/get_all_course_usecase.dart';
import 'package:student_management_hive_api/features/course/presentation/state/course_state.dart';

final courseViewModelProvider =
    StateNotifierProvider.autoDispose<CourseViewModel, CourseState>(
  (ref) => CourseViewModel(
    getAllCourseUsecase: ref.read(getAllUsecaseProvider),
    addCourseUsecase: ref.read(addCourseUsecaseProvider),
    deleteCourseUseCase : ref.read(deleteCourseUseCaseProvider)
  ),
);

class CourseViewModel extends StateNotifier<CourseState> {
  final GetAllCourseUsecase getAllCourseUsecase;
  final AddCourseUsecase addCourseUsecase;
  final DeleteCourseUseCase deleteCourseUseCase;

  CourseViewModel({
    required this.getAllCourseUsecase,
    required this.addCourseUsecase,
    required this.deleteCourseUseCase
  }) : super(CourseState.initialState()) {
    getAllCourses();
  }

  Future<void> getAllCourses() async {
    state = state.copyWith(isLoading: true);
    final result = await getAllCourseUsecase();
    result.fold(
      (failure) => state = state.copyWith(isLoading: false),
      (courses) => state = state.copyWith(isLoading: false, courses: courses),
    );
  }

  Future<void> addCourse(CourseEntity courseEntity) async {
    state = state.copyWith(isLoading: true);
    final result = await addCourseUsecase(courseEntity);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false),
      (isAdded) {
        state = state.copyWith(isLoading: false);
        getAllCourses();
      },
    );
  }

  Future<void> deleteCourse(String courseId) async {
    state = state.copyWith(isLoading: true);
    final result = await deleteCourseUseCase.deleteCourse(courseId);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false),
      (isAdded) {
        state = state.copyWith(isLoading: false);
        getAllCourses();
      },
    );
  }
}
