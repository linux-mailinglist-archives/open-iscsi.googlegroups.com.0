Return-Path: <open-iscsi+bncBDR7L5OKTAGBBWFCYKAQMGQEKWJSOGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D2E3203AF
	for <lists+open-iscsi@lfdr.de>; Sat, 20 Feb 2021 05:34:33 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id l18sf3141258oic.13
        for <lists+open-iscsi@lfdr.de>; Fri, 19 Feb 2021 20:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=deJpt5dXpj8AkrRnId7Ad5fQ72eVyMFnvlsCvrtsSHU=;
        b=Qk2FmjHMm5bjJ5DREY9TVTOjYCz7fi5zmuDj+FPwrYVUmJe+zAgjPxa7VQzBobI/3u
         SwN53FIDBU7dYo5tJ9p4u544a4oxDbXK5Akj+wKYNVdHOwtgQlVmSG+DPjPiH7vou9Y0
         CnUOC0L7cnrsCYrxf30JEf3v3eBLi32g35v4qu+nTzTACF1DpBNQviheNAneVFi/J1I5
         W86uqNdW9+jKnFtDBpC5B34zhXMbLaTfjfIK79JsEV5mD9MCTlCAMtWKk2nqIvpHFzJu
         iWJPbjbhyZGWBg4+iJL5BBe9Zj+hozAiLmwPEOvtF0etfCv8NYV3NhD3+qrsQjEKBPgh
         ufEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=deJpt5dXpj8AkrRnId7Ad5fQ72eVyMFnvlsCvrtsSHU=;
        b=OTdnYSSfTkUZsNCXwFaZTccCuXT1CAHIg88/v79HtpWjqMASNzrt1t3x1ZsVb9lP0k
         vVos30As5YJBsqLkOH/jRM0fM9Oo7ca4LZznaI/tEiAyomRSFjk1MT8dmWCohODWeE2Z
         L4jnj5qgPL/XUF3f2FkTBvE1NJugNo1eHcYJUlJ3TVRwCXLkrFMsvWKTDZx0yeOiypaW
         Sbdn3cHwYhqWh8vlkqGWHx25ijDM4PAS5Ebu9+cTF8Ttowno2boimxkQeTXzKstvsrw5
         8/oANZmBUqxh8kFIcCURdfg7W1/tByBpyxJ4g1KEfnzRbw+uKMjJYlaFWSCo4yKTvUIU
         fUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=deJpt5dXpj8AkrRnId7Ad5fQ72eVyMFnvlsCvrtsSHU=;
        b=sh4gu8VqdJ7BQB44x2FEF2YIsiCvhOJTnM0RZOuc67AAbRh43ehJaAds3wnapSWmDo
         7Hv76Mn40z6CTWEXg7Fzh22oJMxPdDrCemjRgerKvhW8ULztxrqZ91q8TWf9p2KRFIT8
         oVttaha16PgSolN8wmEwjUOdaAcffTDkbscEzBtZ89ErLp4jpeWJBj836py23WNYKsmc
         vxEdFb4N/2DYPY4WlWcgQ5+Q+NrX92oSLHxsXL/n3q+qS+SQ42y/c3HuFpcgvvCcXNP3
         ZXpyjDDMQQZ//9Iqjoju7+FrdskGJs1VCRXkA5X6TU1FlInJTSqTlWeptTzvs958VcPN
         1OeQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530om4b4HBRH1I0FHpG1TFuUJkNB5lssj+97docBjQrKOgFu/2Vj
	yftU7sHG/JiKAyjbw7FsJEo=
X-Google-Smtp-Source: ABdhPJwL6NbzhF1yBN4UBCUn3U6vsE4n5r+/DGFCytig/8b1QDX78+mOD5xeMG3gBQAp8rjksl4iTg==
X-Received: by 2002:a05:6830:2089:: with SMTP id y9mr9707744otq.200.1613795672399;
        Fri, 19 Feb 2021 20:34:32 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:7d19:: with SMTP id v25ls2781812otn.4.gmail; Fri, 19 Feb
 2021 20:34:28 -0800 (PST)
X-Received: by 2002:a9d:640b:: with SMTP id h11mr9211611otl.224.1613795668784;
        Fri, 19 Feb 2021 20:34:28 -0800 (PST)
Date: Fri, 19 Feb 2021 20:34:28 -0800 (PST)
From: "neutro...@gmail.com" <neutronsharc@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <0c62fc2b-0be2-49af-8f57-9117ec4bdb6fn@googlegroups.com>
In-Reply-To: <f76e46dc-f2eb-48fa-8431-f85ee719a181n@googlegroups.com>
References: <f76e46dc-f2eb-48fa-8431-f85ee719a181n@googlegroups.com>
Subject: Re: IO request returns prematurely when iscsi connection is down
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_832_147762268.1613795668234"
X-Original-Sender: neutronsharc@gmail.com
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

------=_Part_832_147762268.1613795668234
Content-Type: multipart/alternative; 
	boundary="----=_Part_833_1365624099.1613795668234"

------=_Part_833_1365624099.1613795668234
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

More details:

1,  after read returns, we parse the read buffer and find that the=20
read-buffer contains stale data from previous read,  i.e.,  it seems the=20
kernel didn't update the buffer at all. That's why I suspect the kernel=20
iscsi client didn't perform the read,  it just bounce back the request to=
=20
upper layer and mark it completed.=20

2,  Client is Ubuntu 18.04 with stock open-iscsi.


-Shawn


On Friday, February 19, 2021 at 8:28:14 PM UTC-8 neutro...@gmail.com wrote:

> Hello all,
>
> I encounter a weird issue with open-iscsi.  I have a test machine with 50=
0=20
> iscsi volumes backed by an IP san.  The test machine then performs r/w wi=
th=20
> o_direct on those 500 raw block devices.  During the test I trigger a=20
> failure on the IP san so some iscsi connections break.  iscsi client is=
=20
> able to reconnect and recover,  however,  immediately after recovery, =20
>  some iscsi read finds corrupted data.
>
> This issue happens frequently. After a lot of tracing on the IP san=20
> server,  we become sure that those corrupted read requests have never bee=
n=20
> received by iscsi server at IP san.
>
> In the following timeline diagram,  the client generates the read around=
=20
> time t1 when connections are turned down.  iscsi connection recovered at=
=20
> time t2.  The time between t1 and t2 is about 15~20 seconds. Read returns=
=20
> several seconds after t2. =20
>
>                      cut iscsi connections             iscsi connection=
=20
> recoveryed
> ------------------------- t1 -------------------------------------------=
=20
> t2 ---------------------------------->
>
>
> The client machine uses Linux libaio to perform read/write.  The=20
> read/write is performed in the following approach:
>
> - blk devices are opened with O_DIRECT,  io buffer is 4K-aligned,  io=20
> offset is 4K aligned.
> - Call io_submit() to submit requests to blk device.
> - call io_getevents() to wait for completion events.=20
>      * If the status is =E2=80=9CN bytes done=E2=80=9D,  assumes I/O was =
successful.
>      * If the status is =E2=80=9C-1=E2=80=9D, assume IO failure.
>
> Is it possible that,  iscsi layer will mark a blk_read/write completion=
=20
> with 0-bytes done because the connection is not available,  and the upper=
=20
> layer will receive a completion with 0-bytes as the result?
>
> Thank you for reading.
>
>
> -Shawn
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/0c62fc2b-0be2-49af-8f57-9117ec4bdb6fn%40googlegroups.com.

------=_Part_833_1365624099.1613795668234
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

More details:<div><br></div><div>1,&nbsp; after read returns, we parse the =
read buffer and find that the read-buffer contains stale data from previous=
 read,&nbsp; i.e.,&nbsp; it seems the kernel didn't update the buffer at al=
l. That's why I suspect the kernel iscsi client didn't perform the read,&nb=
sp; it just bounce back the request to upper layer and mark it completed.&n=
bsp;</div><div><br></div><div>2,&nbsp; Client is Ubuntu 18.04 with stock op=
en-iscsi.</div><div><br></div><div><br></div><div>-Shawn</div><div><br></di=
v><div><br></div><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmai=
l_attr">On Friday, February 19, 2021 at 8:28:14 PM UTC-8 neutro...@gmail.co=
m wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0=
 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">Hell=
o all,<div><br></div><div>I encounter a weird issue with open-iscsi.=C2=A0 =
I have a test machine with 500 iscsi volumes backed by an IP san.=C2=A0 The=
 test machine then performs r/w with o_direct on those 500 raw block device=
s.=C2=A0 During the test I trigger a failure on the IP san so some iscsi co=
nnections break.=C2=A0 iscsi client is able to reconnect and recover,=C2=A0=
 however,=C2=A0 immediately after recovery,=C2=A0 =C2=A0some iscsi read fin=
ds corrupted data.</div><div><br></div><div>This issue happens frequently. =
After a lot of tracing on the IP san server,=C2=A0 we become sure that thos=
e corrupted read requests have never been received by iscsi server at IP sa=
n.<br></div><div><br></div><div><div>In the following timeline diagram,=C2=
=A0 the client generates the read around time t1 when connections are turne=
d down.=C2=A0 iscsi connection recovered at time t2.=C2=A0 The time between=
 t1 and t2 is about 15~20 seconds. Read returns several seconds after t2.=
=C2=A0=C2=A0</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cut iscsi connections=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0iscsi connection recoveryed</div><div>--=
----------------------- t1 ------------------------------------------- t2 -=
---------------------------------&gt;</div><div><br></div><div><br></div></=
div><div>The client machine uses Linux libaio to perform read/write.=C2=A0 =
The read/write is performed in the following approach:</div><div><br></div>=
<div>- blk devices are opened with O_DIRECT,=C2=A0 io buffer is 4K-aligned,=
=C2=A0 io offset is 4K aligned.</div><div>- Call io_submit() to submit requ=
ests to blk device.</div><div>- call io_getevents() to wait for completion =
events.=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0* If the status is =E2=80=9CN b=
ytes done=E2=80=9D,=C2=A0 assumes I/O was successful.</div><div>=C2=A0 =C2=
=A0 =C2=A0* If the status is =E2=80=9C-1=E2=80=9D, assume IO failure.</div>=
<div><br></div><div>Is it possible that,=C2=A0 iscsi layer will mark a blk_=
read/write completion with 0-bytes done because the connection is not avail=
able,=C2=A0 and the upper layer will receive a completion with 0-bytes as t=
he result?<br></div><div><br></div><div>Thank you for reading.</div><div><b=
r></div><div><br></div><div>-Shawn</div><div><br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/0c62fc2b-0be2-49af-8f57-9117ec4bdb6fn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/0c62fc2b-0be2-49af-8f57-9117ec4bdb6fn%40googlegroups.com</a>.=
<br />

------=_Part_833_1365624099.1613795668234--

------=_Part_832_147762268.1613795668234--
