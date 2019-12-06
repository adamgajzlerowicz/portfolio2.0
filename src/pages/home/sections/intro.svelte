<script>
    import { scrollToView} from '../../../utils'
    import Button from '../../../components/button.svelte'
    import { PROJECT_SECTION_ID, INTRO_CONTAINER_ID } from '../../../constants/common'

</script>

<div class="wrapper">
    <div class="container" id={INTRO_CONTAINER_ID}>
        <div class="top center">
            <div class="avatar" style="background-image: url(images/avatar.webp)"/>
            <p class="title">
                Adam Gajzlerowicz
            </p>
            <p class="center portfolio">
                Software engineer
            </p>
        </div>

        <div class="description">
            <p class="paragraph">I create awesome web applications. From large projects but also ones that are small and fun!</p>
            <p class="paragraph hidden">
                Whenever I get a chance I grab a new tool and make something with it.
            </p>
            <p class="paragraph hidden">I love creating apps that make people's live easier.</p>
        </div>

        <div class="bottom center">
            <Button onClick={() => scrollToView(PROJECT_SECTION_ID)} content="Portfolio" />
        </div>
    </div>
</div>

<style>
    .container {
        display: flex;
        flex-direction: column;
        align-content: space-between;
        justify-content: center;
        min-height: calc(100vh - 16px);
        padding: 16px;
    }

    .wrapper {
        width: 100%;
        background-color: #F7F7F7;
    }

    .center {
        margin: 0 auto;
        display: flex;
        flex-direction: column;
        align-content: space-between;
        justify-content: center;
    }

    .portfolio {
        color: #7DA2A9;
        margin-top: 20px;
        font-size: 20px;
    }

    .top {
        flex: 1.2;
    }

    .bottom {
        flex: 0.6;
    }

    .avatar {
        width: 150px;
        height: 150px;
        background-size: cover;
        background-position: top;
        border-radius: 50%;
        margin: 60px auto;
        min-height: 150px;
    }

    .title {
        text-align: center;
        font-size: 50px;
        color: black;
    }

    .description {
        flex: 0.6;
    }

    .paragraph {
        padding: 10px;
        text-align: center;
    }


    @media screen and (max-width: 500px) {
        .avatar {
            margin: 20px auto;
        }

        .hidden {
            display: none;
        }

        .description {
            flex: 0.1;
        }

        .title {
            font-size: 30px;
        }

        .top {
            flex: 1;
        }

        .bottom {
            margin-bottom: 40px;
        }

    }

</style>

