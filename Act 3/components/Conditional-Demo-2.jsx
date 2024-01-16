function Rainy(){
    return(
        <div id="container"><h1>Bring your umbrella!</h1></div>
    );
}

function RainOrShine(props){
    const isRainy = props.isRainy
    if(isRainy){
        return(
            <Rainy />
        );
    }
    return(
        <div id="container"><h1>No rain today!</h1></div>
        
    );
}

export default function RainApp(){
    return(
        <div>
            <RainOrShine
            isRainy={false}
            />
        </div>
    );
}
