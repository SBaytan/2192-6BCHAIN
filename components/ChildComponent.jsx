import React from "react";

// function ChildComponent(props) {
//     return(
//         <div>
//             <p>{props.message}</p>
//         </div>
//     );
// }

// export default ChildComponent;

class ChildComponent extends React.Component{
    render(){
        return(
            <div>
                {this.props.message}
            </div>
        )
    }
}

export default ChildComponent;