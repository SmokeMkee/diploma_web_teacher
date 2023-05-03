import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:diploma_web_teacher/src/features/t_courses/data/dto/courses.dart';
import 'package:diploma_web_teacher/src/features/t_courses/data/repo/repo_courses.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'courses_event.dart';

part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  CoursesBloc({required this.repo}) : super(CoursesInitial()) {
    on<FetchCoursesEvent>(fetchData, transformer: droppable());
    on<AddNewCoursesEvent>(addNewCourse, transformer: droppable());
  }

  List<Courses> listCourses = [];

  Future<void> fetchData(
    FetchCoursesEvent event,
    Emitter<CoursesState> emit,
  ) async {
    try {
      emit(CoursesLoading());
      final response = await repo.fetch();
      listCourses.clear();
      listCourses.addAll(response);
      emit(CoursesData(listCourses: listCourses));
    } catch (e) {
      emit(CoursesError(message: 'something error'));
    }
  }

  Future<void> addNewCourse(
    AddNewCoursesEvent event,
    Emitter<CoursesState> emit,
  ) async {
    try {
      emit(CoursesLoading());
      await repo.addNewCourse(
        color: event.color,
        courseName: event.courseName,
        categoryId: event.categoryId,
      );
    } catch (e) {
      emit(CoursesError(message: 'something error'));
    }
  }

  final RepoCourses repo;
}
