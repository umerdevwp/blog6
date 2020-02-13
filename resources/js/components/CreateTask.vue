<template>

<div class="card">
  <div class="card-header">
    Create New Task
  </div>
  <div class="card-body">

        <form action="" @submit="createTask(task)" class="card-text">

            <div class="form-group">
                <input type="text" placeholder="Task title" v-model="task.task_title" class="form-control">

            </div>
            <div class="form-group">
                <textarea v-model="task.description" placeholder="Task content" class="form-control">

                </textarea>
            </div>
            <div class="form-group">

                <select id="inputState" class="form-control" v-model="task.category">
                    <option select="selected">Choose Category...</option>
                    <option>PHP</option>
                    <option>Angular</option>
                    <option>ROR</option>
                    <option>ASP.NET</option>
                </select>
            </div>
            <div class="form-group">
                <button :disabled="!isValid" class="btn btn-block btn-primary" @click.prevent="createTask(task)">Submit
                </button>
            </div>
        </form>


  </div>
</div>

    </template>

    <script>
        export default {
            name: "CreateTask",
            data() {
                return {
                    task: {
                        task_title: '',
                        description: '',
                        category: ''
                    }
                }
            },
            methods: {
                createTask(task) {
                    this.$store.dispatch('createTask', task)
                }
            },
            computed: {
                isValid() {
                    return this.task.task_title !== '' && this.task.description !== '' && this.task.category !== ''
                }
            }
        }
    </script>

    <style scoped>

    </style>
