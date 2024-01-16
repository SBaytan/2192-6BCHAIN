function Rainy(){
    return(
        <div id="container"><h1>Bring your umbrella!</h1></div>
    );
}

function Sunny() {
    return(
        <div id="container"><h1>Bring your sunglasses!</h1></div>
    )
}

function RainOrShine(props){
    const isRainy = props.isRainy;
    if(isRainy){
        return(
            <Rainy/>
        );
    }
    return(
        <Sunny/>
    )
}

export default function SunnyApp(){
    return(
        <div>
            <RainOrShine
            isRainy={true}
            />
        </div>
    )
}