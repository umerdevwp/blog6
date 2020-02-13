<template>
        <div>

            <div class="card pt-5">
            <h5 class="card-header">Posts</h5>
            <div class="card-body">

                <table class="table  table-bordered card-text">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Content</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="post in posts">
                    <td>{{post.post_title}}</td>
                    <td>{{post.post_content}}</td>
                    <td>
                        <button class="btn btn-success" @click="deletePost(post)"><i style="color:white" class="fa fa-pen-square"></i></button>
                        <button class="btn btn-danger" @click="deletePost(post)"><i style="color:white" class="fa fa-trash"></i></button>
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
            name: "Posts",
            mounted() {
                this.$store.dispatch('fetchPosts')
            },
            methods: {
                deletePost(post) {
                    this.$store.dispatch('deletePost',post)
                }
            },
            computed: {
                ...mapGetters([
                    'posts'
                ])
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
