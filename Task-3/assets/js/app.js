/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
// import '../css/app.css';
import Vue from "vue";
import axios from "axios";

import '../css/app.scss';

var bookList = '/book/get-all';
new Vue({
    name: 'books',
    el: '#tantis-books',
    created: function () {
        this.getBooks();
    },
    data: {
        books: []
    },
    methods: {
        getBooks: function () {
            axios.get(bookList)
                .then(res => {
                    //   console.log(JSON.stringify(res.data.books))
                    this.books = res.data.books;
                })
                .catch(function (error) {
                    console.log(error)
                })
        }
    },
    template: `
        <div class="books-list">
            <div class="book" v-for="item in books">
                <div :data-id=item.id class="book__content">
                    <div class="book__title">
                        <strong>{{item.title}}</strong>
                        <small data-content="author">{{item.author}}</small>
                    </div>

                    <div class="book__description">
                        <small>Book description:</small>
                        <em>{{item.description}}</em>
                    </div>

                    <div class="book__price">
                        <small>Price:</small>
                        <strong>{{item.price}}</strong> PLN
                    </div>
                </div>
            </div>
        </div>`
})


new Vue({
    name: 'addBook',
    el: '#add-book',
    mounted() {
        console.log('Add book mounted')
    },
    data() {
        return {
          title: '',
          author: '',
          description: '',
          price: '',
          code: '',
          output: ''
        };
    },
    methods: {
        formSubmit(e) {
            e.preventDefault();
            let currentObj = this;
            axios.post('/book/add', {
                title: this.title,
                author: this.author,
                description: this.description,
                price: this.price,
                code: this.code
            })
            .then(function (response) {
                currentObj.output = response.data.status;
            })
            .catch(function (error) {
                currentObj.output = error;
            });
        }
    },
    template: `
        <div class="add-book">
            <h2>Add new book</h2>
            <form @submit="formSubmit">
                <strong>Name:</strong>
                <input type="text" class="form-control" v-model="title" placeholder="title">

                <strong>Author:</strong>
                <input type="text" class="form-control" v-model="author" placeholder="author">

                <strong>Description:</strong>
                <textarea class="form-control" v-model="description"></textarea>

                <strong>Price</strong>
                <input type="text" class="form-control" v-model="price" placeholder="price">

                <strong>Code</strong>
                <input type="text" class="form-control" v-model="code" placeholder="code">

                <button class="btn">Add new book</button>
            </form>
        
            <div class="output">
                {{output}}
            </div>
        </div>`
    })

// Need jQuery? Install it with "yarn add jquery", then uncomment to import it.
// import $ from 'jquery';

console.log('Hello Webpack Encore! Edit me in assets/js/app.js');
