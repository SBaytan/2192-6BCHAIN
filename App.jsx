// import { useState } from 'react'
import './App.css'
import Hello from './components/Hello'
import Welcome from './components/Welcome'
// function App() {
//   return (
//     <>
//       <div>
//        <Hello/>
//        <Welcome/>
//       </div>
//     </>
//   )
// }

// export default App

// Shem Ardelee Pioleen M. Baytan
//WD 401

import React from 'react';
import ParentComponent from './components/ParentComponent';

function App() {
  return (
    <div>
      <h1>React Props Example</h1>
      <Hello/>
      <ParentComponent />
      <Welcome/>
    </div>
  );
}

export default App;