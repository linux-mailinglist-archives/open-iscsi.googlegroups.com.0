Return-Path: <open-iscsi+bncBC755V5RXMKBBQEQ4X6QKGQEWURMB6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C03E2BC0C5
	for <lists+open-iscsi@lfdr.de>; Sat, 21 Nov 2020 18:02:57 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id l12sf5339169oth.16
        for <lists+open-iscsi@lfdr.de>; Sat, 21 Nov 2020 09:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vsxK3dvyfREsoxcDoE/6NFAO9qRowe8oziWB6NkbKGg=;
        b=Nf6pMQZ7OhANVvwTJyLIQWU2mwBoBGzzRiSeJ2GWe3SiwOuLG7fF7a8t1/g8qq4MPY
         2CNl+Eh0Q7FD4lL6HPZ8/GNu8KOm8757suN8ufQRAagLew6BEh30lRcIlRy0RFUZfKr0
         6agv9gDYoEm2oNRVVoOLzF8Ed+PvbKrLXMDHiDKHRX20x6iQXOAfAV2B46lb6buYTGCY
         V9O2SApKtK1/IYB9aTGOy2iwivoGOZIvRuT+l46iva1UrRyw2lQ4rx9PL4Hn7Mtahe4D
         1uuYNcVakJrkBO7NOSnO1HVM8/ByZE7aK1VEgVaX6j8HNzjhQdP188vcAx2MeB1YbD4u
         laTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vsxK3dvyfREsoxcDoE/6NFAO9qRowe8oziWB6NkbKGg=;
        b=Qh88en1BG0JKARkzIOCwGvmt8XsW0BCgz+kMhTSoqfIfdh7eAf6GRvUbwR/4HJU6yk
         0SRMeSHMRP7E5Lol3wrEb+1SuS8NdcRmSfIHzcHLTAPuGqGUsoqYEjgfSaJcG6/xEq54
         0u9YGbrtp8sbrrrXWjx0tbrbLGAv9o7tdx0QT3/Mdz8WbwAPrJqf9LYejbqrwv4Pu7gJ
         TjMIJZ7trer0C74pV7ecNxG5Chjxa3zpL1Fr1czDmrYTvHJgc+lrRuwwW1+M1mnbqT+v
         WqnAKmwVZ6i9EHBQ/9meufjPN4eLmkzs0c7UOZlYCbysx21tTt1fWgNYzJ3c1XFXzfMh
         Q0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vsxK3dvyfREsoxcDoE/6NFAO9qRowe8oziWB6NkbKGg=;
        b=JtmE8g4Mpfj2KWgL2DH3OYTBIOHhkikhn9QBAp1RMFftcC796Zl3mIFgMtS1fq1r1E
         d87BqRASm8umlyYyY84KLHJ7JVnqhiFQwRn3cLFqpqAjyzopfiM9iDZ9/UnZQ64lrkyn
         9PFq/e1Iu9vZihGrMoJXzsknUuTOW26MvEUozUDWb5W8lJ3PONyow/j8vCbZN44K4W4D
         GPDlA5c6qIeJqkZX7jLS/6ZawCXVG98RtaCG3cBk43fC72R+JgZZ6ALP+8I++mKzLZ6R
         nuYCGdz1qFki1N4HZFcp5oBLrLhkGBaiML0bT98i5zS5v/e6fnx7FE56xjxyls5awuiO
         cxew==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530wNCbGm5QiPeF+JKphpDn3WSDxa+cQGvHEI7oPCi5FN0u8O4RR
	xyPscJEBPcz/7gyMfyVWl7w=
X-Google-Smtp-Source: ABdhPJy8l7/OT5Mra8hQHbSC2jeAABJRBow6UZ7lch8P26qdQSht0j0+mCKNq+YEQJiTkMFpdfI9xw==
X-Received: by 2002:a05:6830:12d4:: with SMTP id a20mr16799790otq.167.1605978176386;
        Sat, 21 Nov 2020 09:02:56 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:4e95:: with SMTP id c143ls494225oib.11.gmail; Sat, 21
 Nov 2020 09:02:55 -0800 (PST)
X-Received: by 2002:a05:6808:983:: with SMTP id a3mr9673920oic.15.1605978175804;
        Sat, 21 Nov 2020 09:02:55 -0800 (PST)
Date: Sat, 21 Nov 2020 09:02:54 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <2cc4955d-b619-4af4-9f15-d2cd4224e18bn@googlegroups.com>
In-Reply-To: <5FB77CC6020000A10003CD42@gwsmtp.uni-regensburg.de>
References: <20201120062052.51838-1-haowenchao@huawei.com>
 <5FB77CC6020000A10003CD42@gwsmtp.uni-regensburg.de>
Subject: Re: [EXT] [PATCH] iscsiadm: Verify mode parameters when recognize
 mode
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3330_52966196.1605978174979"
X-Original-Sender: leeman.duncan@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_3330_52966196.1605978174979
Content-Type: multipart/alternative; 
	boundary="----=_Part_3331_699998535.1605978174979"

------=_Part_3331_699998535.1605978174979
Content-Type: text/plain; charset="UTF-8"

I agree that the patch reduces lines of code, in that we would now have one 
call to verify params, rather than multiple calls. Also, as you say, we 
check a little sooner, although I don't think that's necessarily a feature.

But please change the wording of the submission to say something more like 
"Check mode parameters earlier and in one place"?

Please submit this as a pull request on github.com under 
open-iscsi/open-iscsi, as that saves me the trouble of manually scraping 
the patch off the email and applying it myself. Thank you.

On Friday, November 20, 2020 at 12:22:37 AM UTC-8 Uli wrote:

> >>> Wenchao Hao <haowe...@huawei.com> schrieb am 20.11.2020 um 07:20 in 
> Nachricht
> <20201120062052.5...@huawei.com>:
> > Parameters verify should be performed as soon as possible
> > to avoid unuseless work.
>
> "avoid unuseless work" ;-)
>
> Is that useful work?
>
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2cc4955d-b619-4af4-9f15-d2cd4224e18bn%40googlegroups.com.

------=_Part_3331_699998535.1605978174979
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>I agree that the patch reduces lines of code, in that we would now hav=
e one call to verify params, rather than multiple calls. Also, as you say, =
we check a little sooner, although I don't think that's necessarily a featu=
re.</div><div><br></div><div>But please change the wording of the submissio=
n to say something more like "Check mode parameters earlier and in one plac=
e"?<br></div><div><br></div><div>Please submit this as a pull request on gi=
thub.com under open-iscsi/open-iscsi, as that saves me the trouble of manua=
lly scraping the patch off the email and applying it myself. Thank you.<br>=
</div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr"=
>On Friday, November 20, 2020 at 12:22:37 AM UTC-8 Uli wrote:<br/></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1=
px solid rgb(204, 204, 204); padding-left: 1ex;">&gt;&gt;&gt; Wenchao Hao &=
lt;<a href data-email-masked rel=3D"nofollow">haowe...@huawei.com</a>&gt; s=
chrieb am 20.11.2020 um 07:20 in Nachricht
<br>&lt;<a href data-email-masked rel=3D"nofollow">20201120062052.5...@huaw=
ei.com</a>&gt;:
<br>&gt; Parameters verify should be performed as soon as possible
<br>&gt; to avoid unuseless work.
<br>
<br>&quot;avoid unuseless work&quot; ;-)
<br>
<br>Is that useful work?
<br>
<br>
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/2cc4955d-b619-4af4-9f15-d2cd4224e18bn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/2cc4955d-b619-4af4-9f15-d2cd4224e18bn%40googlegroups.com</a>.=
<br />

------=_Part_3331_699998535.1605978174979--

------=_Part_3330_52966196.1605978174979--
