
function Rainy(){
    return <div id="container"><h1>Bring your umbrella!</h1></div>
}

function Sunny(){
    return <div id="container"><h1>Bring your sunglasses!</h1></div>
}
const isRainy = false;

function RainOrShine(props) {
    const isRainy = props.isRainy;
    return isRainy ? <Rainy /> : <Sunny/>
}

export default function SunnyRainy() {
    return(
        <div className={`${isRainy === true ? 'dark': 'light'}`}>
            <RainOrShine isRainy = {isRainy}/>
        </div>
    );
}