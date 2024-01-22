import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_hive_api/core/common/snackbar/my_snackbar.dart';
import 'package:student_management_hive_api/features/batch/presentation/view_model/batch_view_model.dart';
import 'package:student_management_hive_api/features/course/presentation/view_model/course_view_model.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  @override
  Widget build(BuildContext context) {
    final batchState = ref.watch(batchViewModelProvider);
    final courseState = ref.watch(courseViewModelProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard View'),
          actions: [
            IconButton(
              onPressed: () {
                showSnackBar(message: 'Refressing...', context: context);
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
            Switch(value: true, onChanged: (value) {}),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Batches",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              batchState.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 15,
                        ),
                        itemCount: batchState.batches.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Center(
                              child: ListTile(
                                title: Center(
                                  child: Text(
                                    batchState.batches[index].batchName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Courses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              courseState.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 15,
                        ),
                        itemCount: courseState.courses.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.amber[100],
                            child: Center(
                              child: ListTile(
                                title: Center(
                                  child: Text(
                                    courseState.courses[index].courseName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ],
          ),
        ));
  }
}
