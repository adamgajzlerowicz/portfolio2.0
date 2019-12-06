<script>
    import { PROJECT_SECTION_ID } from '../../../constants/common'
    import { scrollToView } from '../../../utils'
</script>

<button class="button" on:click={() => scrollToView(PROJECT_SECTION_ID)}>
    <ion-icon class="up" name="ios-arrow-up"></ion-icon>
</button>

<style>
    .button {
        margin: 0 auto 32px;
        width: 100%;
        display: none;
    }

    .up {
        font-size: 70px;
        visibility: visible;
        padding: 1px;
    }

    .up:hover, .up:active {
        font-size: 72px;
        padding: 0;
    }

    @media screen and (max-width: 500px) {
        .button {
            display: block;
        }
    }
</style>
