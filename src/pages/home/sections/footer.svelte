<div class="footer">
    <div class="name">© {new Date().getFullYear()} Adam Gajzlerowicz</div>
    <div class="icons">
        <a
            href="https://github.com/adamgajzlerowicz"
            aria-label="see me on github"
            target="_blank"
            rel="noopener noreferrer">
            <ion-icon name="logo-github"></ion-icon>
        </a>
        <a
            href="https://www.linkedin.com/in/adam-gajzlerowicz-26311934"
            aria-label="see me on linkedin"
            target="_blank"
            rel="noopener noreferrer" >
            <ion-icon name="logo-linkedin"></ion-icon>
        </a>
        <a
            href="https://steamcommunity.com/id/entity02"
            aria-label="see me on steam"
            target="_blank"
            rel="noopener noreferrer" >
            <ion-icon name="logo-steam"></ion-icon>
        </a>

        <a
            href="mailto:nelf86@gmail.com"
            aria-label="send me an email"
            target="_blank"
            rel="noopener noreferrer" >
            <ion-icon name="paper-plane"></ion-icon>
        </a>

    </div>
</div>

<style>
    .footer {
        padding: 50px;
        background-color: black;
        color: #7DA2A9;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .icons a {
        color: #7DA2A9;
        font-size: 30px;
        padding-left: 20px;
    }

    @media screen and (max-width: 500px) {
        .footer {
            flex-direction: column-reverse;
        }

        .name {
            margin-top: 20px;
        }

        .icons a {
            padding-left: 10px;
            padding-right: 10px;
        }
    }

</style>

