Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBQEA7X2AKGQEJMDGJQA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFA51B2F8A
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 20:49:37 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id x8sf15150839qkf.3
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 11:49:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587494977; cv=pass;
        d=google.com; s=arc-20160816;
        b=sLMkAVfqgi1Ugyz0In1z091TUSCJ5/KDXNg622VFO8Hv4G0YdeSCTV1fx8QDpBrUfI
         7g6ZIHBYnJJaKXIXNksnjKsXzKwgFG5olhAM0xIZVARKTJp/5yPYVdsZ7pgqYJ7dBny8
         1hOq3f6/QhdHYXAf8+u9GIPKrXDE1o+1aQkfaqPMB/QN0bYtrrhbjlm0/QHWeRzzA+Xd
         fzlxgOFwGdOHv6DtgJdaEMRj78c8ZlXPgWjB5jUynI78+o3TRaG+HA0v5pBSOOnyjzrg
         xfdUexlWjpFfLjgkkQC6GtfS/zmeaMaBRxRgQYM6DNkWZq++qY1r/V6eu0MPnCvqxMos
         LU0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6PodWtOj/mOYV16fkZxCs4ThtVjq/JvnBx8TDxsYiYI=;
        b=OGBEqoQ1RaBkB7FRi9Wll+2DEcf3xcXhjioL5ZRT71aZDzr4VGGRc2l1nzt8jYg7Wh
         rC0++RO5dvqZx2H1OoIFL8ZYMjwrieLbQZ2TocjL0BVFe+Q4uOvA1Ye2p4h9dlScO2xh
         Qkj6XIZW1kiw8Q9gNLOKuE25lSGEdc9YCtLFKvC5Ot9RUWZROWEHPLTBCKpuFj+PIFHt
         PIKdwTLojNGr6/depE/22VQ46tKY/YCBS3DkJu9TlAYBNa09r7cBLDVoiQutDCoTkd1k
         A07dVfMkMFOSbh1LHhf3Hu/Yr6XasanSETysHNDx5UOzBM2wSV34Lr7Sp0L4lC27MBOl
         y89A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rvCSSJV6;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6PodWtOj/mOYV16fkZxCs4ThtVjq/JvnBx8TDxsYiYI=;
        b=oENY19RNOp3P4pT5/ge0tRnSR/iBZgm8XkIhBBqgqFRoSUEu21JEtPrWXfbBm2f6f/
         KP2AWebcn3T+h+oucivZSxotH8lUcR9itnx2qnwJDSliT8BL9B0Bb0KNxD+vNLlE9zzS
         fw61dBBP8PaDHA/Xq5VtGKJoLmavlJ224FMVpQ9/+Uksa+qK2N7wMoHJ324CM6duR9Ep
         0DuioNe8YqYP0VfdJpOC9qPTvW4YWa84zjUTsSzuxhJV9JiGldSWscyH5Zsf+o0+qtAW
         iNyRgoZp4qdYyxrflQPz/aKDclWmqaejhCUeNYLHlvVabLEiI16i4Rz5BPXWRmVr4Kpo
         l+Ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PodWtOj/mOYV16fkZxCs4ThtVjq/JvnBx8TDxsYiYI=;
        b=S1LB8pcz993y/fEKP5hLnKsGdF5ujcdd6tyRQmKNDEV+VeF+ZllgTt+CFKCpfd4+a4
         Hvbz6fy3gtSW9UXeAFtA2OiBuYSYAsmDm0NcrxfmfUptoh4+7UVCp9yE54LQMH2eArP+
         KKRaJVvqKRxe4fx3ER2fjrFQnHST4xchth8gZ/A46Bs8+mnmpTtytaAzBygQEnUhLL6S
         OQ3LRsWxYKAou/SHa4rgSe+Koaeyg9uutBOY5V615cn5ZyZPStPBTp6Nta9wlAhwTF0x
         SwAoToOebSfqfTX7guxhL+1poMUt3eavPvJcFA93zwCK+PCokygIvDDNvcUw7v18c1H1
         Se2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PodWtOj/mOYV16fkZxCs4ThtVjq/JvnBx8TDxsYiYI=;
        b=QBPvKqPf8OmfMAKl1oUOn0EobrIDjqdvm6e4BNxp2buOLnxZIGabTsY5riMbfVF+4E
         WQCi9bAT114lhWdvvniBBN/WcKUbJ377198pa7myKqp5DI7kY9NCJ9h2LlvwK3MUS9zd
         nQ/OfQe0y/7bpNgmHQw0SovsgeJZErOUwQfDJsgitTkzpuPijtwC06Bv84TJ0nFEI57H
         8KuTrk8wtnRsTTFqw5nteNu77aLznShFdWJacrKQBFQUmgTBA1YUyYY73zlFkkuycL8R
         Aht8yIrxwimf3JbaFC51vGJLM8A6qWIyWLDNVaLuKw90y8Oxr/Cp3JIdpwG9H48lgTqp
         Sp1g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZ3sdWPKuzKOe8WujFhBJvuq9J0Xo5FVFpm0jMh9WTc1aCgP0hy
	pd75BGYW4qatFnQ7JQath8w=
X-Google-Smtp-Source: APiQypIMfohbAN9rkCgMAwdA10orsLyVYfbPc1Go/TCX+tyCrIkt/F9Z3D8i5S092TwfGka8Jl9spA==
X-Received: by 2002:a37:851:: with SMTP id 78mr22945637qki.352.1587494976830;
        Tue, 21 Apr 2020 11:49:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls8003817qto.11.gmail; Tue, 21
 Apr 2020 11:49:36 -0700 (PDT)
X-Received: by 2002:ac8:6058:: with SMTP id k24mr23305829qtm.377.1587494976396;
        Tue, 21 Apr 2020 11:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587494976; cv=none;
        d=google.com; s=arc-20160816;
        b=VjZwZq2pn5ylPp6+TkUYrEy3JYFKyGBrPV8UH4oaOp1Llx/HniV9oAk5OpotKvszgC
         WJCGxyRR/Dl5sg1uvbxCQNNPGezpZLbcHVWgvkND52JrKs4xviv/2gUZHh8lYvq/fm5W
         /iJynPLn6MJbf59xnrOg8k6qfl3Eamf8Sos+yz44LGh4v82GaRHjjhZiZa/vAakF50D2
         y9Li/Li2h/rk8///1a2jK3djO1de6Sft6TbWKI852KW+F1WPRrHEChCpLbNk3mxudLmm
         fxfaWZWoAsHzVwMsS9QhvSgkRbtqEfsLSq0ONuu9v4gO+6uLJ7BPxGuOypu+nBqWGWgQ
         eCOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=6BhDnh7EbzdxmuoP96exvCEoJAYiA1Oc1jk+sbCNaO0=;
        b=KypyZjtbkGuCliyyC6Uc41O8Lm67wVLWSbsC6ajRb8oP9rLwHi5dfsJfruWw/oyuM1
         It8gqHT7eODSe4OqASEfUCQLEreJPJWAVz6tJKJZ+buiANYkLKw0Pk6BYOnXtO/dPWkA
         yTyYs80DT1ikg6e4pIqEO/uiFjLoAZwWjvrpEhm1nxDtUfyWaomTT4USg412XUQfrDi4
         3PPs2NLkK+hFgUDTww2TCnkEwQWs6zOkTVr4da4vbi95R9TOjmYX0yX7I4Wek1sQ6ln8
         n1jxRdalqF75deSQn/haACCPissLTptwhgsdnmXwLoHwj3qAReuTp4EPPpmI8oA2PdBW
         KTxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rvCSSJV6;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id z126si230822qkd.2.2020.04.21.11.49.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 11:49:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id e8so7252270ilm.7
        for <open-iscsi@googlegroups.com>; Tue, 21 Apr 2020 11:49:36 -0700 (PDT)
X-Received: by 2002:a92:5f46:: with SMTP id t67mr21381600ilb.64.1587494975915;
 Tue, 21 Apr 2020 11:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com> <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
In-Reply-To: <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Tue, 21 Apr 2020 14:49:27 -0400
Message-ID: <CAK3e-EawwxYGb3Gw74+P-yBmrnE0ktOL=Fj1OT_LEQ+CZyZUkg@mail.gmail.com>
Subject: Re: udev events for iscsi
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001f4eff05a3d17a65"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rvCSSJV6;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--0000000000001f4eff05a3d17a65
Content-Type: text/plain; charset="UTF-8"

Hello,

 If the loss exceeds the timeout value yes.  If the 'drive' doesn't come
back in 30 to 60 seconds it's not likely a transitory event like a cable
pull.

NOOP-IN and NOOP-OUT are also know as KeepAlive.  That's when the
connection is up but the target or initiator isn't responding.   If those
timeout the connection will be dropped and a new connection attempt made.

 Don


On Tue, Apr 21, 2020 at 2:44 PM The Lee-Man <leeman.duncan@gmail.com> wrote:

> On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wrote:
>>
>> [reposting, as the previous one seems to be lost]
>>
>> Hi all,
>> I have a question regarding udev events when using iscsi disks.
>>
>> By using "udevadm monitor" I can see that events are generated when I
>> login and logout from an iscsi portal/resource, creating/destroying the
>> relative links under /dev/
>>
>> However, I can not see anything when the remote machine simple
>> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout expiring, I
>> don't see anything about a removed disk (and the links under /dev/ remains
>> unaltered, indeed). At the same time, when the remote machine and disk
>> become available again, no reconnection events happen.
>>
>
> Because of the design of iSCSI, there is no way for the initiator to know
> the server has gone away. The only time an initiator might figure this out
> is when it tries to communicate with the target.
>
> This assumes we are not using some sort of directory service, like iSNS,
> which can send asynchronous notifications. But even then, the iSNS server
> would have to somehow know that the target went down. If the target
> crashed, that might be difficult to ascertain.
>
> So in the absence of some asynchronous notification, the initiator only
> knows the target is not responding if it tries to talk to that target.
>
> Normally iscsid defaults to sending periodic NO-OPs to the target every 5
> seconds. So if the target goes away, the initiator usually notices, even if
> no regular I/O is occurring.
>
> But this is where the error recovery gets tricky, because iscsi tries to
> handle "lossy" connections. What if the server will be right back? Maybe
> it's rebooting? Maybe the cable will be plugged back in? So iscsi keeps
> trying to reconnect. As a matter of fact, if you stop iscsid and restart
> it, it sees the failed connection and retries it -- forever, by default. I
> actually added a configuration parameter called reopen_max, that can limit
> the number of retries. But there was pushback on changing the default value
> from 0, which is "retry forever".
>
> So what exactly do you think the system should do when a connection "goes
> away"? How long does it have to be gone to be considered gone for good? If
> the target comes back "later" should it get the same disc name? Should we
> retry, and if so how much before we give up? I'm interested in your views,
> since it seems like a non-trivial problem to me.
>
>>
>> I can read here that, years ago, a patch was in progress to give better
>> integration with udev when a device disconnects/reconnects. Did the patch
>> got merged? Or does the one I described above remain the expected behavior?
>> Can be changed?
>>
>
> So you're saying as soon as a bad connection is detected (perhaps by a
> NOOP), the device should go away?
>
>>
>> Thanks.
>>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd284295c22%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd284295c22%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EawwxYGb3Gw74%2BP-yBmrnE0ktOL%3DFj1OT_LEQ%2BCZyZUkg%40mail.gmail.com.

--0000000000001f4eff05a3d17a65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>=C2=A0If the loss exceeds =
the timeout value yes.=C2=A0 If the &#39;drive&#39; doesn&#39;t come back i=
n 30 to 60 seconds it&#39;s not likely a transitory event like a cable pull=
.=C2=A0 =C2=A0</div><div><br></div><div>NOOP-IN and NOOP-OUT are also know =
as KeepAlive.=C2=A0 That&#39;s when the connection is up but the target or =
initiator isn&#39;t responding.=C2=A0 =C2=A0If those timeout the connection=
 will be dropped and a new connection attempt made.=C2=A0</div><div><br></d=
iv><div>=C2=A0Don=C2=A0</div><div><br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 21, 2020 at 2:44 PM=
 The Lee-Man &lt;<a href=3D"mailto:leeman.duncan@gmail.com">leeman.duncan@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, G=
ionatan Danti wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">[reposting, as the previous one seems to be lost]<br><br>Hi all=
,<br>I have a question regarding udev events when using iscsi disks.<br><br=
>By using &quot;udevadm monitor&quot; I can see that events are generated w=
hen I login and logout from an iscsi portal/resource, creating/destroying t=
he relative links under /dev/<br><br>However, I can not see anything when t=
he remote machine simple dies/reboots/disconnects: while &quot;dmesg&quot; =
shows the iscsi timeout expiring, I don&#39;t see anything about a removed =
disk (and the links under /dev/ remains unaltered, indeed). At the same tim=
e, when the remote machine and disk become available again, no reconnection=
 events happen.<br></div></blockquote><div><br></div><div>Because of the de=
sign of iSCSI, there is no way for the initiator to know the server has gon=
e away. The only time an initiator might figure this out is when it tries t=
o communicate with the target.</div><div><br></div><div>This assumes we are=
 not using some sort of directory service, like iSNS, which can send asynch=
ronous notifications. But even then, the iSNS server would have to somehow =
know that the target went down. If the target crashed, that might be diffic=
ult to ascertain.</div><div><br></div><div>So in the absence of some asynch=
ronous notification, the initiator only knows the target is not responding =
if it tries to talk to that target.</div><div><br></div><div>Normally iscsi=
d defaults to sending periodic NO-OPs to the target every 5 seconds. So if =
the target goes away, the initiator usually notices, even if no regular I/O=
 is occurring.</div><div><br></div><div>But this is where the error recover=
y gets tricky, because iscsi tries to handle &quot;lossy&quot; connections.=
 What if the server will be right back? Maybe it&#39;s rebooting? Maybe the=
 cable will be plugged back in? So iscsi keeps trying to reconnect. As a ma=
tter of fact, if you stop iscsid and restart it, it sees the failed connect=
ion and retries it -- forever, by default. I actually added a configuration=
 parameter called reopen_max, that can limit the number of retries. But the=
re was pushback on changing the default value from 0, which is &quot;retry =
forever&quot;.</div><div><br></div><div>So what exactly do you think the sy=
stem should do when a connection &quot;goes away&quot;? How long does it ha=
ve to be gone to be considered gone for good? If the target comes back &quo=
t;later&quot; should it get the same disc name? Should we retry, and if so =
how much before we give up? I&#39;m interested in your views, since it seem=
s like a non-trivial problem to me.<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><br>I can read here that, years ago, a=
 patch was in progress to give better integration with udev when a device d=
isconnects/reconnects. Did the patch got merged? Or does the one I describe=
d above remain the expected behavior? Can be changed?<br></div></blockquote=
><div><br></div><div>So you&#39;re saying as soon as a bad connection is de=
tected (perhaps by a NOOP), the device should go away? <br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br>Thanks.<br></d=
iv></blockquote></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd284295c22%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd284295c22%40g=
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
om/d/msgid/open-iscsi/CAK3e-EawwxYGb3Gw74%2BP-yBmrnE0ktOL%3DFj1OT_LEQ%2BCZy=
ZUkg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://group=
s.google.com/d/msgid/open-iscsi/CAK3e-EawwxYGb3Gw74%2BP-yBmrnE0ktOL%3DFj1OT=
_LEQ%2BCZyZUkg%40mail.gmail.com</a>.<br />

--0000000000001f4eff05a3d17a65--
