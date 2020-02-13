let actions = {

    createPost({ commit }, post) {


        axios.post('/api/posts/create', post, {
                headers: {
                    'Content-Type': 'application/json',
                    Authorization: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiYWY1ZDQ3OGYwNmNjZGNlM2Q2MDAzZWU5YzE5ZWM0MGYwZThjNTFhZDBkNGUzN2VhNjhiZDY5OGJkYzJiMjI3MGIzYTMwZTIxOGI2NmNlMjIiLCJpYXQiOjE1ODE0NTI0NzgsIm5iZiI6MTU4MTQ1MjQ3OCwiZXhwIjoxNjEzMDc0ODc4LCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.iw155gzJ2-mU6aeKwZSYFZLD-1ewBqvFvUJoKOufieEpJLAWdONho2TTpP8UHpRX8vHDFpqFBRrDGyEctyuc8qQsXYGc2XsCizRnjIZwibGsVYvtZoCGNQRQomtgNtQw0Blqlfhyl98SEhvbAck32I-_9LrotQo48kI67wrUdRhCIyikN27_n0uMqW2P7Ek5FJ3FhBzRkQfqGMPt720yvBqLvFe9LIkeKOhwKdMKoJA-DvEetMbFDilEXZyDeiz0nZy8QuK2HWz0qdWjluqHoW8CocMtGIFL7kLBu3yUkmpEK5ycxXXvcPeClRDK5egCQTnNingSXCeaAgpe5lbe7QeTAlw4kEIjtWSKuaeDlzjzEYxdGhyIfEOIkPGz5zFrTbz2TgERUZLUf_PyrfF5WMFntm38MCCoCHMRNL_zeDxcIlvZzNkXc-6pCSK5mBQdg61eqYk7P2eCWTj67uj4KPrgLHNHHyiLPXnfD1GVM-gf_td3BBhkagWmsoflvLG8wzze65FbLk3TaXNm1wsSsPOm8SEIBZvmFEDmkGynLjFNhDWxLNST1vdJGW_vyIj0rv-Hn5dg6EsMSSbkjXlYi93LdtY7jFLUGrNG1pedmi2Y4WZck2Z8EJ2r7JEyIZutmBXWqx20F_bA9jRAlJwtPjxASj_vxuFae5mz0GCYBtI'
                }
            })
            .then(res => {
                commit('CREATE_POST', res.data)
            }).catch(err => {
                console.log(err)
            })

    },
    fetchPosts({ commit }) {

        axios.get('/api/posts', {
                headers: {
                    'Content-Type': 'application/json',
                    Authorization: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiYWY1ZDQ3OGYwNmNjZGNlM2Q2MDAzZWU5YzE5ZWM0MGYwZThjNTFhZDBkNGUzN2VhNjhiZDY5OGJkYzJiMjI3MGIzYTMwZTIxOGI2NmNlMjIiLCJpYXQiOjE1ODE0NTI0NzgsIm5iZiI6MTU4MTQ1MjQ3OCwiZXhwIjoxNjEzMDc0ODc4LCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.iw155gzJ2-mU6aeKwZSYFZLD-1ewBqvFvUJoKOufieEpJLAWdONho2TTpP8UHpRX8vHDFpqFBRrDGyEctyuc8qQsXYGc2XsCizRnjIZwibGsVYvtZoCGNQRQomtgNtQw0Blqlfhyl98SEhvbAck32I-_9LrotQo48kI67wrUdRhCIyikN27_n0uMqW2P7Ek5FJ3FhBzRkQfqGMPt720yvBqLvFe9LIkeKOhwKdMKoJA-DvEetMbFDilEXZyDeiz0nZy8QuK2HWz0qdWjluqHoW8CocMtGIFL7kLBu3yUkmpEK5ycxXXvcPeClRDK5egCQTnNingSXCeaAgpe5lbe7QeTAlw4kEIjtWSKuaeDlzjzEYxdGhyIfEOIkPGz5zFrTbz2TgERUZLUf_PyrfF5WMFntm38MCCoCHMRNL_zeDxcIlvZzNkXc-6pCSK5mBQdg61eqYk7P2eCWTj67uj4KPrgLHNHHyiLPXnfD1GVM-gf_td3BBhkagWmsoflvLG8wzze65FbLk3TaXNm1wsSsPOm8SEIBZvmFEDmkGynLjFNhDWxLNST1vdJGW_vyIj0rv-Hn5dg6EsMSSbkjXlYi93LdtY7jFLUGrNG1pedmi2Y4WZck2Z8EJ2r7JEyIZutmBXWqx20F_bA9jRAlJwtPjxASj_vxuFae5mz0GCYBtI'
                }
            })
            .then(res => {
                commit('FETCH_POSTS', res.data)
            }).catch(err => {
                console.log(err)
            })
    },
    deletePost({ commit }, post) {
        axios.delete(`/api/posts/${post.id}`)
            .then(res => {
                if (res.data === 'ok')
                    commit('DELETE_POST', post)
            }).catch(err => {
                console.log(err)
            })
    },




    // Task Actions
    createTask({ commit }, task) {

        axios.post('/api/tasks/create', task, {
                headers: {
                    'Content-Type': 'application/json',
                    Authorization: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiYWY1ZDQ3OGYwNmNjZGNlM2Q2MDAzZWU5YzE5ZWM0MGYwZThjNTFhZDBkNGUzN2VhNjhiZDY5OGJkYzJiMjI3MGIzYTMwZTIxOGI2NmNlMjIiLCJpYXQiOjE1ODE0NTI0NzgsIm5iZiI6MTU4MTQ1MjQ3OCwiZXhwIjoxNjEzMDc0ODc4LCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.iw155gzJ2-mU6aeKwZSYFZLD-1ewBqvFvUJoKOufieEpJLAWdONho2TTpP8UHpRX8vHDFpqFBRrDGyEctyuc8qQsXYGc2XsCizRnjIZwibGsVYvtZoCGNQRQomtgNtQw0Blqlfhyl98SEhvbAck32I-_9LrotQo48kI67wrUdRhCIyikN27_n0uMqW2P7Ek5FJ3FhBzRkQfqGMPt720yvBqLvFe9LIkeKOhwKdMKoJA-DvEetMbFDilEXZyDeiz0nZy8QuK2HWz0qdWjluqHoW8CocMtGIFL7kLBu3yUkmpEK5ycxXXvcPeClRDK5egCQTnNingSXCeaAgpe5lbe7QeTAlw4kEIjtWSKuaeDlzjzEYxdGhyIfEOIkPGz5zFrTbz2TgERUZLUf_PyrfF5WMFntm38MCCoCHMRNL_zeDxcIlvZzNkXc-6pCSK5mBQdg61eqYk7P2eCWTj67uj4KPrgLHNHHyiLPXnfD1GVM-gf_td3BBhkagWmsoflvLG8wzze65FbLk3TaXNm1wsSsPOm8SEIBZvmFEDmkGynLjFNhDWxLNST1vdJGW_vyIj0rv-Hn5dg6EsMSSbkjXlYi93LdtY7jFLUGrNG1pedmi2Y4WZck2Z8EJ2r7JEyIZutmBXWqx20F_bA9jRAlJwtPjxASj_vxuFae5mz0GCYBtI'
                }
            })
            .then(res => {
                commit('CREATE_TASK', res.data)
            }).catch(err => {
                console.log(err)
            })

    },
    fetchTasks({ commit }) {

        axios.get('/api/tasks', {
                headers: {
                    'Content-Type': 'application/json',
                    Authorization: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiYWY1ZDQ3OGYwNmNjZGNlM2Q2MDAzZWU5YzE5ZWM0MGYwZThjNTFhZDBkNGUzN2VhNjhiZDY5OGJkYzJiMjI3MGIzYTMwZTIxOGI2NmNlMjIiLCJpYXQiOjE1ODE0NTI0NzgsIm5iZiI6MTU4MTQ1MjQ3OCwiZXhwIjoxNjEzMDc0ODc4LCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.iw155gzJ2-mU6aeKwZSYFZLD-1ewBqvFvUJoKOufieEpJLAWdONho2TTpP8UHpRX8vHDFpqFBRrDGyEctyuc8qQsXYGc2XsCizRnjIZwibGsVYvtZoCGNQRQomtgNtQw0Blqlfhyl98SEhvbAck32I-_9LrotQo48kI67wrUdRhCIyikN27_n0uMqW2P7Ek5FJ3FhBzRkQfqGMPt720yvBqLvFe9LIkeKOhwKdMKoJA-DvEetMbFDilEXZyDeiz0nZy8QuK2HWz0qdWjluqHoW8CocMtGIFL7kLBu3yUkmpEK5ycxXXvcPeClRDK5egCQTnNingSXCeaAgpe5lbe7QeTAlw4kEIjtWSKuaeDlzjzEYxdGhyIfEOIkPGz5zFrTbz2TgERUZLUf_PyrfF5WMFntm38MCCoCHMRNL_zeDxcIlvZzNkXc-6pCSK5mBQdg61eqYk7P2eCWTj67uj4KPrgLHNHHyiLPXnfD1GVM-gf_td3BBhkagWmsoflvLG8wzze65FbLk3TaXNm1wsSsPOm8SEIBZvmFEDmkGynLjFNhDWxLNST1vdJGW_vyIj0rv-Hn5dg6EsMSSbkjXlYi93LdtY7jFLUGrNG1pedmi2Y4WZck2Z8EJ2r7JEyIZutmBXWqx20F_bA9jRAlJwtPjxASj_vxuFae5mz0GCYBtI'
                }
            })
            .then(res => {
                commit('FETCH_TASKS', res.data)
            }).catch(err => {
                console.log(err)
            })
    },
    deleteTask({ commit }, task) {
        axios.delete(`/api/tasks/${task.id}`)
            .then(res => {
                if (res.data === 'ok')
                    commit('DELETE_TASK', task)
            }).catch(err => {
                console.log(err)
            })
    }
}

export default actions