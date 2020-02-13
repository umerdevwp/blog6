<template>

        <div class="card">

        <div class="card-body">
            <h5 class="card-title">Create Post</h5>

            <form action="" @submit="createPost(post)" class="card-text" enctype="multipart/form-data">
            <h6 class="text-center font-weight-bold"></h6>
            <div class="form-group">
                <input type="text" placeholder="Post title" v-model="post.post_title" class="form-control">

            </div>
            <div class="form-group">
                <textarea v-model="post.post_content" placeholder="Post content" class="form-control">
                </textarea>
            </div>
            <!--  <div class="form-group">
            <input type="file" class="form-control" v-on:change="onImageChange">
            </div> -->
            <div class="form-group">
                <button :disabled="!isValid" class="btn btn-block btn-primary" @click.prevent="createPost(post)">Submit
                </button>
            </div>
        </form>
        </div>
        </div>
    </template>

    <script>
        export default {
            name: "CreatePost",
            data() {
                return {
                    post: {
                        post_title: '',
                        post_content: '',
                       // image: ''
                    }
                }
            },
            methods: {
                createPost(post) {
                    this.$store.dispatch('createPost', post)
                },
                   // onImageChange(e){
                   // console.log(e.target.files[0]);
                   // this.image = e.target.files[0];
                // },
            },
            computed: {
                isValid() {
                    return this.post.post_title !== '' && this.post.post_content !== '' && this.post.image !== ''
                }
            }
        }
    </script>

    <style scoped>

    </style>
