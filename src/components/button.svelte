<script>
    export let onClick;
    export let content;
</script>

<button class="button" on:click={onClick}>{content}</button>

<style>
    .button {
        text-decoration: none;
        padding: 16px 20px;
        border: 2px white solid;
        background-color: black;
        color: white;
        transition-duration: 300ms;
    }

    .button:hover {
        border: 2px black solid;
    }
</style>
