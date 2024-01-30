function ThingstoBring(){
    return( 
        <div id="container">
            <ul>
                <h3>Things To Bring</h3>
                <li>My Strawhat</li>
                <li>Gum Gum Fruit</li>
                <li>The Red Vest</li>
            </ul>
            </div>
    );
}

function CheckedorNot(props){
    const ischecked = props.ischecked
    if (ischecked) {
        <ThingstoBring/>
    }
    return(
        <div id="container">
            <ul>
                <h3>Things To Bring</h3>
                <li >My Strawhat</li>
                <li>Gum Gum Fruit</li>
                <li>The Red Vest</li>
            </ul>
            </div>
    );
}

export default function ThingstoBringApp(){
    return(
        <div>
            <CheckedorNot
            ischecked={true}
            />
        </div>
    );
}