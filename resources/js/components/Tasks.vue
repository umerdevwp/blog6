<template>
        <div>
            <div class="card">
            <h5 class="card-header">Tasks</h5>
            <div class="card-body">
                 <table class="table table-striped card-text list-table">
                <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Content</th>
                    <th scope="col">Category</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="task in tasks">
                    <td>{{task.task_title}}</td>
                    <td>{{task.description}}</td>
                    <td>{{task.category}}</td>
                    <td>
                        <button class="btn btn-success" @click="deleteTask(task)"><i style="color:white" class="fa fa-pen-square"></i></button>
                        <button class="btn btn-danger" @click="deleteTask(task)"><i style="color:white" class="fa fa-trash"></i></button>

                    </td>
                </tr>
                </tbody>
            </table>
            </div>
            </div>

        </div>

    </template>

    <script>
        import {mapGetters} from 'vuex'

        export default {
            name: "Tasks",
            mounted() {
                this.$store.dispatch('fetchTasks')
            },
            methods: {
                deleteTask(task) {
                    this.$store.dispatch('deleteTask',task)
                }
            },
            computed: {
                ...mapGetters([
                    'tasks'
                ]),

            }
        }
    </script>

    <style scoped>
    .list-table .btn {
        padding: 5 !important;
    }
    .list-table .btn .fa {
        font-size: 0.7rem !important;
    }
    </style>
