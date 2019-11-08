Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBHX6S3XAKGQEUD44B5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 45548F5487
	for <lists+open-iscsi@lfdr.de>; Fri,  8 Nov 2019 20:16:48 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id u20sf5520114pga.4
        for <lists+open-iscsi@lfdr.de>; Fri, 08 Nov 2019 11:16:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573240606; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQ2v/cKWU5lAi06CtzunrU+DaLxRonvdWtb0Y40YTpETdyO4aU26EZV7KGQYNCaYUq
         lWBmT/43IfUUSwtcHr7JfbemSWmJRe8/+4vcMORT+y6g8awgN4a9rrzRcDtqhTIpYfT/
         b+ZAOh9aPOgwHvTiKvrDx3zQlzUd+So00sMQTMCK1mqYJMWRl/Es/IVkeQ7iLL2sJy4P
         kOB0QqS9iNYcCAQyMTtPljMBZQFPWg/7GkIK2okZtH2mCzMve2IRnRn4TD3BTdT/Uo1u
         5OeaRJmCu6gm3ymHtP6EJ3mQtG5HRe6RBO27p24PgCcfX8eioSB6rFLUROPrUlwbOlMQ
         HBsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sY4SklWGuhkQgmCUiVJnHj319YtDjgKOt62zTq+MtvE=;
        b=l98pDeq9oP2YYLWdTE3OA2RgVloky183aWCneC7B1zQDI1ZLNTEMWlTNHxxg293oBu
         ZC/dxAlY3J0jBwk6qRiSaTeA/DkI9teFxaApjDB+33P+0sRJFlPBxstqYvH5INMtZ3pV
         q09n+XofcP7Elg4kDKVniyKO0PP/Jd1Vm/y090vbbK5/MEWMuEbvRj8bYiyfRSAQO7RH
         u+Bq9IaKpOnNeJf3OIZ6ldzF4AwDlv/iV+BfC0OfdlT0FMMVTQOUBUW2kIlvIwdGnkDL
         tyD9vzaSfb2M4P9RZp/YSPQaRQQFYe90ErzvgeumsmWV+YUzMS4vJMRDBtd3Vrfhfq/0
         QQlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b+jGVM61;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sY4SklWGuhkQgmCUiVJnHj319YtDjgKOt62zTq+MtvE=;
        b=THvIUGXJBta6XiZSLFRMFdxXKEUsU48WoBa8FDoK99v1wpgIfMmukpmGOjuyZTPNt3
         GL8QvCdZDd84fUALTAZ92Xjyd9CErEULNX1YezAfPwl6RBWGJ3XFX4qepV1mog97kt91
         5zJ0oBB2BBr/FwySW/nunsp+mQDnU/HrWzVNuCjfvQ9dpuWNhe0sy49qzQ8kz783fhlR
         hLs4G21gFnD0zzlbX9aqrIY6/PG7omr9vLYzbUYOiWbcPG+1XYEPHXk0tgEx+IgRLND0
         n6G5S1dyfeecr2PqXohL4AvaRNjdugiNJ1vPzlWJk3FTsBjswY3+44kbqo4ob4z5exUM
         eZig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sY4SklWGuhkQgmCUiVJnHj319YtDjgKOt62zTq+MtvE=;
        b=G1k/YiVmmJwME0ioHEdIPLfLy2wGgkEQ/t6NGKW0w3x5oVvsG0AHQK65g9VTs43dX3
         JkRJQNJirnf/qXhgnDDT2V7/RPnEK+GAeAyM08yvEslbx+yNhf3F6hisvwUwu442qgGa
         JjxB6qT07fG6SjB95ojW+eO6OwkD2vH/oDmirG9aA5rq8sLwB2lGfTUpDQe6C4//HJhk
         jhBJu45cnCjeA0IQJxj2G3q9NSHrOC+N9w06dd4bADys4V61jxnNCmPGcX4KSziUvcMK
         Ynt3SG7V1nqlbX/flMYNI3S7oS6cEc4/bkxsmOU6QN7BTOcp0eg2AV8IHfCfwqEGnJP/
         x8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sY4SklWGuhkQgmCUiVJnHj319YtDjgKOt62zTq+MtvE=;
        b=J7oTmrin6NbEtE+M+2icwqFKGA869qBCZHJyPS2wjJxTO0EdybZ7jOIxUHc8fXvJLj
         XV46FUmVrXCEZAltnaqt1WnVCxlFbm58+ObtL1WQ8NY5u59zl01rvtWQOaYhU8bRF2kt
         yUjYo3h3AL1uPanj6A45yTuaEjMiNp7ueSDJER0jZw+7AtOR7FTw+ZOHOtJ/mmCwm1hE
         +q9ca30ZdHdHGP+6Em5wyGeZEXhY5bClzIkBkZ0KEGMj+sZD8n0omgYSglXYW+UnTDfb
         OLyfWVhWfrgfyme1+ka241nbeKb3iHdpoLDZkZ7yP/Z33YY3zFbJW9NXejPtfmHOWsz5
         3ctQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXmtXFaFm6YoV4Ejs/ss5VhpAZNJHk85LLhaz8zFgjClzjSI8VN
	TyZgGWdrpWNvcqZbBmR4XwU=
X-Google-Smtp-Source: APXvYqw4VgbLhjqBQJfFdszn4/lz3VQ5w61Qmn3bFfH33/ciK4Ekkp7Q2pozLmQir3wZvAF84HOTOA==
X-Received: by 2002:a63:6a86:: with SMTP id f128mr13666198pgc.295.1573240606718;
        Fri, 08 Nov 2019 11:16:46 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:4458:: with SMTP id t24ls2396059pgk.4.gmail; Fri, 08 Nov
 2019 11:16:46 -0800 (PST)
X-Received: by 2002:a63:fe0c:: with SMTP id p12mr13820519pgh.121.1573240606171;
        Fri, 08 Nov 2019 11:16:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573240606; cv=none;
        d=google.com; s=arc-20160816;
        b=0+gILoMcS705qkHzmerfy36vpzKLMnrcSSF02Py+otXu3oty0IJJNIAZGsdvvT/E9d
         kCxMsFslZ3meo8+V9fnV8TVNN9+EHTrdfrpzZeqUeleMOq34HgyxVtKDh5gtzeQTxsaf
         qYQmaO7RLMgGTIzDwAekL4knIOtk2V+VkW4dWOQ7c3XQSR896wPamOYMgGRn1JeSYaCL
         LZ4obbmgNY+JkBXk8opFkqWd/XAgb1T5pHoN+U7R8IpYWWA4kXGo0av3FMlEvKyUieIC
         +fJ8+eoFSBv7Btk8EA5F8jLGSZKohw21qhW9uSUhx/UzyJUt8hW41qIoWBGWh0bFPjCe
         0D1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=S+n2Gqn0IcGOlYZNw3SmtgUGQz6yrJUyvN/cOIM+YhA=;
        b=egOzT4il1WaolN+HRVnl63nST0fAdnP/QO7ypY6TuBLdv/FYpLupyVJC9t67m1AoN/
         khzF6JO0nea8OGry/Ga8kdMJb5xALFu4XkSCMTpkBRAZ3cAb5F/Z+IeK9gNZJQvQWccP
         0eUDMRJmHh01cS9pZLJu9KKD3XslzMKIJiZpokFwybbLOrVbSQFW8x4oX8QP63LBKv0/
         ccte2Oz9LDvryfDL7yrg7MfUvSRDfPQ32kOIR1owCvulEpyeoP7PGw3cIvwrhb89TomK
         M9MUmHu39oNdVmjEWt4jDSJf0k4O60vaAY5Y1z0JQ3ktPqS1Dbc4tlcY0RVmNCpMag6x
         1wFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b+jGVM61;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id t71si369867pjb.2.2019.11.08.11.16.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 11:16:46 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id r9so6073236ilq.10
        for <open-iscsi@googlegroups.com>; Fri, 08 Nov 2019 11:16:46 -0800 (PST)
X-Received: by 2002:a92:d80e:: with SMTP id y14mr14900918ilm.267.1573240605591;
 Fri, 08 Nov 2019 11:16:45 -0800 (PST)
MIME-Version: 1.0
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
 <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com> <0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>
 <5DC3F334020000A100034E56@gwsmtp.uni-regensburg.de> <1972273e-83e5-4e7f-9c76-00d0deb31185@googlegroups.com>
In-Reply-To: <1972273e-83e5-4e7f-9c76-00d0deb31185@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Fri, 8 Nov 2019 14:16:34 -0500
Message-ID: <CAK3e-EZ9Wi3gsDEPgg5A-AArib_D9h_1VbQtPxp=M4tH+e_8tg@mail.gmail.com>
Subject: Re: Re: iSCSI packet generator
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000714ca50596da9fbc"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b+jGVM61;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000714ca50596da9fbc
Content-Type: text/plain; charset="UTF-8"

Hello,

 iSCSI is just a transport method for SCSI commands.  Same as Fibre
Channel, SAS, etc..

 When the network takes in the iSCSI packets, the SCSI commands and data
are separated and they go to their respective devices or 'disks' in this
case.

 Regards
Don


On Fri, Nov 8, 2019 at 1:40 PM Bobby <italienisch1987@gmail.com> wrote:

>
> Hi Ulrich,
>
> Thanks for the hint. Can you please help me regarding following two
> questions.
>
> - Linux block layer perform IO scheduling IO submissions to storage device
> driver. If there is a physical device, the block layer interacts with it
> through SCSI mid layer and SCSI low level drivers. So, how *actually* a
> software initiator (*Open-iSCSI*) interacts with "*block layer*"?
>
> - What confuses me, where does the "*disk driver*" comes into play?
>
> Thanks :-)
>
>
>
>> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/1972273e-83e5-4e7f-9c76-00d0deb31185%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/1972273e-83e5-4e7f-9c76-00d0deb31185%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EZ9Wi3gsDEPgg5A-AArib_D9h_1VbQtPxp%3DM4tH%2Be_8tg%40mail.gmail.com.

--000000000000714ca50596da9fbc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>=C2=A0</div><div>=C2=A0iSCSI is just a tr=
ansport method for SCSI commands.=C2=A0 Same as Fibre Channel, SAS, etc..=
=C2=A0</div><div><br></div><div>=C2=A0When the network takes in the iSCSI p=
ackets, the SCSI commands and data are separated and they go to their respe=
ctive devices or &#39;disks&#39; in this case.=C2=A0</div><div><br></div><d=
iv>=C2=A0Regards=C2=A0</div><div>Don</div><div><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 201=
9 at 1:40 PM Bobby &lt;<a href=3D"mailto:italienisch1987@gmail.com">italien=
isch1987@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><br>Hi Ulrich,<br><br>Thanks for the hin=
t. Can you please help me regarding following two questions.=C2=A0<br><br><=
div><div>-=20

Linux block layer perform IO scheduling IO submissions to storage device dr=
iver. If there is a physical device, the block layer interacts with it thro=
ugh SCSI mid layer and SCSI low level drivers. So, how *actually* a softwar=
e initiator (<b>Open-iSCSI</b>) interacts with &quot;<b>block layer</b>&quo=
t;?=C2=A0</div><div><br></div><div>- What confuses me, where does the &quot=
;<b>disk driver</b>&quot; comes into play?<br><br>Thanks :-)</div></div><br=
><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><br></blockquote></d=
iv>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1972273e-83e5-4e7f-9c76-00d0deb31185%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/1972273e-83e5-4e7f-9c76-00d0deb31185%40g=
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
om/d/msgid/open-iscsi/CAK3e-EZ9Wi3gsDEPgg5A-AArib_D9h_1VbQtPxp%3DM4tH%2Be_8=
tg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/open-iscsi/CAK3e-EZ9Wi3gsDEPgg5A-AArib_D9h_1VbQtPxp%3DM4=
tH%2Be_8tg%40mail.gmail.com</a>.<br />

--000000000000714ca50596da9fbc--
