import React from 'react';
import './App.css';
import {CodeSnippet} from 'carbon-components-react'

function App() {
  return (
    <div className="App">
      <header className="App-header">

        <CodeSnippet>
          this is a code example!
        </CodeSnippet>
      </header>
    </div>
  );
}

export default App;
