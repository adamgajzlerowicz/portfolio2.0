<div class="mousey">
    <div class="scroller"></div>
</div>

<style>
    :root {
        --mouseColor: black;
    }

    .mousey {
        width: 3px;
        padding: 10px 15px;
        height: 35px;
        border: 2px solid var(--mouseColor);
        border-radius: 25px;
        opacity: 0.75;
        box-sizing: content-box;
        margin: 0 auto;
    }
    .scroller {
        width: 3px;
        height: 10px;
        border-radius: 25%;
        background-color: var(--mouseColor);
        animation-name: scroll;
        animation-duration: 2.2s;
        animation-timing-function: cubic-bezier(.15,.41,.69,.94);
        animation-iteration-count: infinite;
    }
    @keyframes scroll {
        0% { opacity: 0; }
        10% { transform: translateY(0); opacity: 1; }
        100% { transform: translateY(15px); opacity: 0;}
    }
</style>
