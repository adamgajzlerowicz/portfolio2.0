<script>
    import { onMount } from 'svelte'
    import { APP_CONTAINER_ID, INTRO_CONTAINER_ID, SHOW_HOME_BUTTON_AT } from '../constants/common'
    import { scrollToView } from '../utils'

    let show = false

    const callback = entries => {
      show = entries[0].intersectionRatio <= SHOW_HOME_BUTTON_AT
    }

    onMount(() => {
      const options = {
        threshold: [SHOW_HOME_BUTTON_AT]
      }

      new IntersectionObserver(callback, options)
        .observe(document.querySelector(`#${INTRO_CONTAINER_ID}`))
    })
</script>
<button class="{show ? 'top-visible top' : 'top'}" on:click={() => scrollToView(APP_CONTAINER_ID)}>
    <span class="top-label">AG</span>
</button>

<style>
    .top {
        position: fixed;
        top: 20px;
        left: 20px;
        margin-top: -30px;
        opacity: 0;
        transition-duration: 300ms;
        z-index: 1;
    }

    .top-label {
        font-size: 24px;
        font-weight: bold;
    }

    .top-visible {
        margin-top: 0;
        opacity: 1;
    }

    @media screen and (max-width: 500px) {
        .top {
            display: none;
        }
    }
</style>
