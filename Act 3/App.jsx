import { useState } from 'react'
import './App.css'
import ShinyButton from './components/Conditional-Demo-1'
import RainApp from './components/Conditional-Demo-2'
import SunnyApp from './components/Conditional-Demo-3'
import SunnyRainy from './components/Conditional-Demo-4'

function App() {

  return (
    <>
      <ShinyButton/>
      <RainApp/>
      <SunnyApp/>
      <SunnyRainy/>
    </>
  )
}

export default App