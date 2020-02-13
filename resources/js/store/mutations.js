let mutations = {
    CREATE_POST(state, post) {
        state.posts.unshift(post)
    },
    FETCH_POSTS(state, posts) {
        return state.posts = posts
    },
    DELETE_POST(state, post) {
        let index = state.posts.findIndex(item => item.id === post.id)
        state.posts.splice(index, 1)
    },


    // Task Mutations
    CREATE_TASK(state, task) {
        state.tasks.unshift(task)
    },
    FETCH_TASKS(state, tasks) {
        return state.tasks = tasks
    },
    DELETE_TASK(state, task) {
        let index = state.tasks.findIndex(item => item.id === task.id)
        state.tasks.splice(index, 1)
    }

}
export default mutations