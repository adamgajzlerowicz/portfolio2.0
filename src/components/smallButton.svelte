<script>
    export let onClick;
    export let content;
</script>

<button class="button" on:click={onClick}>{content}</button>

<style>
    .button {
        background-color: white;
        color: black;
        text-transform: capitalize;
        cursor: pointer;
        border: black 1px solid;
        padding: 4px 12px;
        font-size: 16px;
        transition-duration: 200ms;
    }

    .button:hover, .button:active {
        background-color: #F7F7F7;
    }

    @media screen and (max-width: 500px) {
        .button {
            padding: 6px 8px;
        }
    }

</style>
