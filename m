Return-Path: <open-iscsi+bncBCEJDZGXJAIJZZOL54CRUBH56OPEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id C099111DBFC
	for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 03:08:30 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id z12sf549285pju.0
        for <lists+open-iscsi@lfdr.de>; Thu, 12 Dec 2019 18:08:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576202909; cv=pass;
        d=google.com; s=arc-20160816;
        b=jjyinkUPsUyT3V67fXB+JKadhqPv9QgkyjjNkYTuuQFD2vdL9Qu3jTn1eMdb0IJMlc
         ud6ccjBp1mkX1KhB3Z9bHFj2gSZIOJJhCBJc/FGm7Y30QjrsR2bjW3EcCjJI/vxgRWcH
         obqfEpf8Vu2eEtNyZykWfLnXgmod5628Ule09Ft8H+r665gouhIHIGPnko+bMZ7NkI2T
         wyWidz8d+NlR5OXRAS462goGiEFD1QkZUWZM7gDM+twQQC9YJhrVHTmTYwzbCNqn+Zq/
         lW7ea4viOYU1rBrnuupmGh1XfJOOY6JjifQEKFwi7dEBgbMakZQCHQTMLWd5oz0PFReL
         sNmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+hh4IHwlteqvu8BeyrQLgp4l9tZ5P3uFza5f8F7miH4=;
        b=kJM57euhuvGE9Q1871Zvd9SxxGwF7s2M74frNiGKosyBvQDVMarAA/9X8IdRx9wqoR
         0R+G9q9FP6d5qW9VOrIFuGmLaiJmIUZDxJYywa2yyoF+xwReXUjL6eqMwSiCs3sEKCDx
         CQ063L5OwU+BIGPtIfRakZoUSUjfAX+Pi2CZ7xT4JCdbHZ/kQNCLXo4R9tISlUzvct41
         2h5crujxw7P8LASJbeORKb5plefi21m8ibdX3TFAfdc8LZc4mU2ozSTfhn5XDlZvUgmw
         ADAIeI55YkuycCW/SoE8ApjUUYq94F1JEcVGsS7ho2NRNZJThS3egYjf+BeJUuajF2W5
         hSuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCAC2S8K;
       spf=pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+hh4IHwlteqvu8BeyrQLgp4l9tZ5P3uFza5f8F7miH4=;
        b=QDVSJmHcyWGlRuHGiL7uNdVxzFtREU8CYdVv+1n0BTSicAKvILc+yC+zBBz/57jcfx
         YXX9UhOGoTaw5Dj4CaDl57wXZDXWEZooAlVVH/A3JjB+s+MFlM65uAKqob2Fq+RtjEuh
         UTmBX/QomUuBsKkiBj/hOR9I22PHcLg0ZoB9LO1vuLOFNmcWzd4JU7tDXQN1F51FJ4pI
         IjaZHRENhhBdgVKMIhr0hB6G2hwdqBjVaU1YwhMor619OFuwuDRwjXs6PcUAskdscDGO
         csIiiRy//7NtJ3aGfnAyvONvh5VmumtocwQbl1K4JhLnTgu8OcNK6BX5fpeEv9RdIr6T
         XGHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+hh4IHwlteqvu8BeyrQLgp4l9tZ5P3uFza5f8F7miH4=;
        b=c87BrppylV0mXvBYPfxIAH0YpTaGOsX9k2IhGsxlPHXjta1YHnESu9wdqYJc56HU4E
         a3BPJ2FMrDtzuwwFpnm45xGNtIwhVatZv+2ZfYba4DB80wRtxFfZKR8l1gq8PRRzU2FB
         KGaZJ92Pbojk6wp/msszrh/EKGKnz0UDhUSOw74fE4GJnx6d3A8pISRVEGwel5662ocV
         O9TigJerCOK56g1cDJP4SIOHl+mOuMSitZE55afW0JkPovF5QLksYfRmNbLP6tXCqYlK
         FSB2aEM/Dl3fGCWd9rDv57CE4x4tigsph/Ve2gfID7hT/ItthnmXXTj8Lm60VtKr32JB
         KwdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+hh4IHwlteqvu8BeyrQLgp4l9tZ5P3uFza5f8F7miH4=;
        b=fy8ugfEbRk8N8gZ/SqdaK1879X4b7QDESp0UGNlnV4oryUYaH/Px7F0MSaU9BHWRVP
         gZ9PeQbB6AfW+UjD7EBGDg9X+XoKscUkKbkqKqn043WSQyelEJ9erpqYgk8gdjQyfNBS
         TXiyzQ81My6YpD08smoLYJJLsGIk8Kgp7SSIMoJO5vycuV67JOA8VOqTb21JFJ0u9RPh
         G7aP/4IuLQj9C/nmmqFE2yOnZ8CYYx5I3sBVK8iEKT7GYtqq8Ufr70JrB9+5guWlsdJm
         Pired64x9q/bG0bKdhRbXOHFimjOZDZI5JSHk0EjgEBlWNULIRheARHk4zq03qHHz46M
         /lwg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXX/TJGAvlJtjy/6IVumQmkwgylpv7Ssmg9Z46Sx5TDSOaDG3MZ
	TGiQ+Hb/T5btYuQfmm0psSM=
X-Google-Smtp-Source: APXvYqyBwLpsKqfHAL58JzdNKl3YxQFqOfEhxMcE2gT79dGeu+8kxxYo+9klRhKR8/sxV+DAMK2Vqw==
X-Received: by 2002:a17:902:321:: with SMTP id 30mr13002687pld.153.1576202908969;
        Thu, 12 Dec 2019 18:08:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:215b:: with SMTP id s27ls1773442pgm.7.gmail; Thu, 12 Dec
 2019 18:08:28 -0800 (PST)
X-Received: by 2002:a62:7696:: with SMTP id r144mr13438576pfc.177.1576202908491;
        Thu, 12 Dec 2019 18:08:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576202908; cv=none;
        d=google.com; s=arc-20160816;
        b=G5N+rF4FdqJbedue4X+SEEMbkL74ErFXIxvzamK19BMIEaSzMINCAs+RO371jDyz0D
         zvC/SrPHca8ehPRp02Z6co5Ym19V8wKUvVnkiGrgcqSQi7SVai56LsBDmCRZM3M4tfU0
         w/b96KNyWGbJP0hccwhAPp7yVMyWmFb0S/BcX/cmU7yAzHzZLi9/Pznp9PO35OxGxpbV
         HB2rvGFIWwEs2jd810Blot6xpqNE6RJ4kjWX23aNLq4hTmeuUFwGN8aLKUbZM25/GsEf
         Mzfwbn5vouvXs/DfGukwWpKw3J9HU9bjlr0rXG/r2QqCUNhEcwLyw9LeufbV0IZ29KBH
         CJNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Fdfo6Wp+Rx9j9PLm+755ysYxeSX7MNQU2cBaqo6Cheg=;
        b=mT0ZA3fhVWABMatai+AFdWQ2dqqzvunI1zVMt5lfMTWyU9ySON7js6tUJZLLCfT2gg
         aPDCWaMxkhyOzXWidvRB3FrPlmXOYNXBzmB67qm7YJwU30qCSUFl4+EXgPf/rAAkhWFv
         iZjNX7kziZYktcVsp30q4cRLBWgwvQi9GZDO5pDY9Xc9KQvKUaQrqsXu4ZKY+b9Uf62h
         sUiAvSr8XqTemKcrh6D68ARfRTRew0pYoP79CubEuYfHhyofCfSOj1tmvLmuyRZJ2LK8
         xP8kzrTg+OIE2Z4Zm63jU7KsNOf4WSVen8tobD/D4gyyaNfAQPdosmdyTEWP0fmL9hJh
         xjlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCAC2S8K;
       spf=pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id d14si473124pfo.4.2019.12.12.18.08.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 18:08:28 -0800 (PST)
Received-SPF: pass (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id i72so262599ybg.3
        for <open-iscsi@googlegroups.com>; Thu, 12 Dec 2019 18:08:28 -0800 (PST)
X-Received: by 2002:a25:2653:: with SMTP id m80mr6573882ybm.424.1576202907504;
 Thu, 12 Dec 2019 18:08:27 -0800 (PST)
MIME-Version: 1.0
References: <372db1a3-424d-4063-bcdb-ccb0b821df0b@googlegroups.com>
 <1cf29039-73ae-46df-8e0e-76c8f17fed15@googlegroups.com> <5bdc3a89-e685-453d-8908-5a5c0e2f7332@googlegroups.com>
In-Reply-To: <5bdc3a89-e685-453d-8908-5a5c0e2f7332@googlegroups.com>
From: can zhu <zhucan.k8s@gmail.com>
Date: Fri, 13 Dec 2019 10:08:12 +0800
Message-ID: <CAGJK1K=U0UsEn9Sv0=tOFo2hgBeWEE4gDaRtsgEg3-08g829BA@mail.gmail.com>
Subject: Re: reboot hangs with "Reached target shutdown", who can help me?
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006553ad05998c5630"
X-Original-Sender: zhucan.k8s@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QCAC2S8K;       spf=pass
 (google.com: domain of zhucan.k8s@gmail.com designates 2607:f8b0:4864:20::b34
 as permitted sender) smtp.mailfrom=zhucan.k8s@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000006553ad05998c5630
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

@The Lee-Man  Thanks, In my environment=EF=BC=8C the default value of the
node.startup is automatic in config



The Lee-Man <leeman.duncan@gmail.com> =E4=BA=8E2019=E5=B9=B412=E6=9C=8813=
=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8A=E5=8D=885:17=E5=86=99=E9=81=93=EF=BC=
=9A

> Okay, I checked CentOS 8, and the services seem very similar to what I'm
> familiar with.
>
> You do indeed need to make sure your nodes have startup set to automatic.
>
> Use something like:
>
> > zsh> sudo iscsiadm -m node --op update --name 'node.conn[0].startup'
> --value automatic
>
> to update all nodes to start and stop automatically, and update startup i=
n
> /etc/iscsi/iscsid.conf to change the default.
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5c=
0e2f7332%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5=
c0e2f7332%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAGJK1K%3DU0UsEn9Sv0%3DtOFo2hgBeWEE4gDaRtsgEg3-08g829BA%40mail.g=
mail.com.

--0000000000006553ad05998c5630
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newline"><table cellp=
adding=3D"0" class=3D"gmail-cf gmail-gJ" style=3D"border-collapse:collapse;=
margin-top:0px;width:auto;font-family:Roboto,RobotoDraft,Helvetica,Arial,sa=
ns-serif;font-size:14px;letter-spacing:0.2px;display:block"><tbody style=3D=
"display:block"><tr class=3D"gmail-acZ" style=3D"height:auto;display:flex">=
<td class=3D"gmail-gF gmail-gK" style=3D"white-space:nowrap;padding:0px;ver=
tical-align:top;width:703.984px;line-height:20px;display:block;max-height:2=
0px"><table cellpadding=3D"0" class=3D"gmail-cf gmail-ix" style=3D"border-c=
ollapse:collapse;table-layout:fixed;width:703px"><tbody><tr><td class=3D"gm=
ail-c2" style=3D"display:flex"><h3 class=3D"gmail-iw" style=3D"overflow:hid=
den;font-size:0.75rem;font-weight:inherit;margin:inherit;text-overflow:elli=
psis;letter-spacing:0.3px;color:rgb(95,99,104);line-height:20px"><span clas=
s=3D"gmail-qu" tabindex=3D"-1" style=3D"outline:none"><span name=3D"The Lee=
-Man" class=3D"gmail-gD" style=3D"color:rgb(32,33,36);font-size:0.875rem;fo=
nt-weight:bold;display:inline;vertical-align:top;letter-spacing:0.2px;line-=
height:20px">@The Lee-Man=C2=A0 Thanks, In my environment=EF=BC=8C the defa=
ult value of the node.startup is automatic in config</span></span></h3><div=
><span class=3D"gmail-qu" tabindex=3D"-1" style=3D"outline:none"><span name=
=3D"The Lee-Man" class=3D"gmail-gD" style=3D"color:rgb(32,33,36);font-size:=
0.875rem;font-weight:bold;display:inline;vertical-align:top;letter-spacing:=
0.2px;line-height:20px"><br></span></span></div><div><span class=3D"gmail-q=
u" tabindex=3D"-1" style=3D"outline:none"><span name=3D"The Lee-Man" class=
=3D"gmail-gD" style=3D"color:rgb(32,33,36);font-size:0.875rem;font-weight:b=
old;display:inline;vertical-align:top;letter-spacing:0.2px;line-height:20px=
"><br></span></span></div></td></tr></tbody></table></td></tr></tbody></tab=
le></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">The Lee-Man &lt;<a href=3D"mailto:leeman.duncan@gmail.com">leeman.duncan=
@gmail.com</a>&gt; =E4=BA=8E2019=E5=B9=B412=E6=9C=8813=E6=97=A5=E5=91=A8=E4=
=BA=94 =E4=B8=8A=E5=8D=885:17=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Okay, I chec=
ked CentOS 8, and the services seem very similar to what I&#39;m familiar w=
ith.</div><div><br></div><div>You do indeed need to make sure your nodes ha=
ve startup set to automatic.</div><div><br></div><div>Use something like:</=
div><div><br></div><div>&gt; zsh&gt; sudo iscsiadm -m node --op update --na=
me &#39;node.conn[0].startup&#39; --value automatic</div><div><br></div><di=
v>to update all nodes to start and stop automatically, and update startup i=
n /etc/iscsi/iscsid.conf to change the default.<br></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5c0e2f7332%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/5bdc3a89-e685-453d-8908-5a5c0e2f7332%40g=
ooglegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAGJK1K%3DU0UsEn9Sv0%3DtOFo2hgBeWEE4gDaRtsgEg3-08g829=
BA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/open-iscsi/CAGJK1K%3DU0UsEn9Sv0%3DtOFo2hgBeWEE4gDaRtsgEg=
3-08g829BA%40mail.gmail.com</a>.<br />

--0000000000006553ad05998c5630--
