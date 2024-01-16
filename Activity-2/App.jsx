// import { useState } from 'react'
import './App.css'
// Shem Ardelee Pioleen M. Baytan
//WD 401

import React from 'react';
import TodoList from './components/TodoList'
import MovieList from './components/MovieList';
import BookList from './components/BookList';

function App() {
  return (
    <>
      <div>
        <TodoList/>
        <MovieList/>
        <BookList/>
      </div>
    </>

  );
}

export default App