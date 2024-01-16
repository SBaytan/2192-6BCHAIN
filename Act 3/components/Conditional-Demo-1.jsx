function ShinyButton() {
    const handleClick = () => {
        alert("You Clicked me! I'm Shem Ardelee Pioleen Baytan");
    }
    return(
        <div id="container">
            <button id="button" onClick={handleClick}>
            Click This Button!
        </button>
        </div>
        
    )
}

export default ShinyButton