Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBTOQQDXAKGQELCNAUMY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 264CCEE140
	for <lists+open-iscsi@lfdr.de>; Mon,  4 Nov 2019 14:31:59 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id z2sf5534428otm.14
        for <lists+open-iscsi@lfdr.de>; Mon, 04 Nov 2019 05:31:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572874318; cv=pass;
        d=google.com; s=arc-20160816;
        b=icc1N/hfzykVg+o/KJpPAsDiYToczq8g1wClZmXXNZpystvqA3X9bxl6Bf0CydryZg
         iCJ8JqUwoe46KYHYDdTyqQqO2zuzh4JY1T1+Mmp8ixIKt6M11M5FU+V3bBPoPB10x19w
         9nkUhjvZnqOlD0fnyoh6auHrsRab/r09XkPUxSl7VE08dZqlHQI/D5VEa/eA1ee/JCmQ
         TcaaiT8ZL9D9N3b/gmFG1OopncPO6KJiUk5RY366QjcenDjPzoThhtwxqdKB0YvcgAP6
         h9I1Y9G4vnXGMOZdbYfb0oeSoZ2XugkVCA37C7bCxTAb6sRHgoXDU2x4cyTrxr+ght1V
         MvtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6KVa0rwtBM5T3Qic6rHSqVArKcIUWpwlCDL2wbGFb8A=;
        b=jWbuuZMwdBuK3DJNs2W42c/Wn+wfCuD/XioucA5hSr9n+GfDGIZlkFhvsBq2Dw8cyE
         vgh7cMlJTkXpAMAPPLGVd+MR9TqcIwMpfPeZMvyGAoji4VvYnphxcrtQYBOqYYOZZja3
         AQMXHoCLk/s/8jU5n0Qo0RLzURfVyxtW6p5R4LdVnaeJTkqS46bhBBXDVqHuD8SlvsQy
         bGfFbzQmnZuA/IDT6SBAYjowrmfP2+gi0Y+svk+gM+APaH4LiK5iXgE2CY/UXkE5K6fF
         n1giohdgIkE/aZ1F+GqhBDHICvQS21KV1VLhITgsXJdN5dfa/3pU5XS/YmKm8hI1bJ//
         m/rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sq6ebBoK;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6KVa0rwtBM5T3Qic6rHSqVArKcIUWpwlCDL2wbGFb8A=;
        b=rqHvMZBsNoR3AMi6TrIcfkPF5fE8Ya4sW3bJZwmYf7Uz59q0hBkBc5WTIpu1ojRiee
         u+M1OP99VoC2sFaLz0Lac82NWtzKULi1s81bHaAqzz7dqd0phx17BBPqA2qd/Q3OubOi
         tLj9vPR663jMyd45HaDv6DFewsfCJauDXDgv3vBbgB+QurHBebQ6rtVvrmRPkyTr8SCF
         kQRUgayDbmjPbo0kQkwHFYKvC8hzzHYVzYpPRSYWNg5EcFy0UL7sQ5iVnC9pLhYsOjgU
         sWoIWBaGBZih7tE53DM8+jnorPXXVcbOXHRp7qXjapCMP8gsSM2/XGiQmbu9zpDPW9zO
         SfIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6KVa0rwtBM5T3Qic6rHSqVArKcIUWpwlCDL2wbGFb8A=;
        b=GblMjLu8jzJFoO+ahR8rGpkwmLuL3Tw+BiVX77Im5oIjS0P0L5tyduI56JRLqnFqON
         ZcFcM6vewC/47kOQoTBGdAp633wl1h8B2aKlVfWvmq+0TuDaH3CigFZ05LLMJVVvSXlW
         dB2bfWj8RC9bnz845ay/P1dBKuzbSFCkSwEbg8SxYYMSMju916ToWDxF7rtG9kr8T83z
         u4V/B3hcAEbn3n43O0BVduEVJ7aaHBKyL8VlOKGkd5F5nJsal1XdWiXNO+d6XK8/tZur
         yRc2/pEsdPnWMlPbdtuIfOIUrJ1MXrQoqGh4nRWtC7YOD1LFQc5JBqMh0dhllTTLi6uU
         3z9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6KVa0rwtBM5T3Qic6rHSqVArKcIUWpwlCDL2wbGFb8A=;
        b=uVatUwU3s7nLgKCLLAJNhmGd1qXS9hz986wouLtnig0NukpLvdR0520Jab7A+X+AYp
         +K7VuvpRz/VJAn7Y8ay9Q77FG36I1Ml3w7HEwmiXdRp9bhQTEwasMxO3CCCGZ06xRCZz
         PVjb4BTgwt3SbzAv4QTq7vdYI4tM+qzTJyGA/c/kKfkFXJFkWTHwk2RayfSL/ZTBTaYW
         csggm3PZDWZvFYosuw/tOMoykPmoeDiG6DEXcYyUxdXa4aAuShrayvWLFqC0eBIyuc0a
         6j4KOP2tpTUWTcIL7uZWUKzkLAtzlIQqIWy9c9awktL+MlmC05AJG41Z/nu1DgyHFjcZ
         5BNQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXrrZqamZP875hR+w1bPJjdXxTDYpuFs2wP+lGIrCHDx3WU3tpb
	H9mB9jcl0xwod6J8GXGp8Wk=
X-Google-Smtp-Source: APXvYqwJCfxx1OWe6NtA6UeUERMunYiLQK8DckyWvAy1eJmrd5KQGOZt7T1ivDgtbl7eVnvYUYmang==
X-Received: by 2002:a9d:154:: with SMTP id 78mr5766182otu.294.1572874318039;
        Mon, 04 Nov 2019 05:31:58 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:2211:: with SMTP id b17ls2341563oic.9.gmail; Mon, 04 Nov
 2019 05:31:57 -0800 (PST)
X-Received: by 2002:aca:55c1:: with SMTP id j184mr682563oib.105.1572874317654;
        Mon, 04 Nov 2019 05:31:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572874317; cv=none;
        d=google.com; s=arc-20160816;
        b=g43JAb8xdV/r9RvyOmOd6fLgU40vmW8lsDbeGQQWhH8pA8gOTJ8uGe1dbrWfEmvm8K
         U/dCXJBRZiMwvmpJ6Od0XGm/g5L9LF1Z7qrnPevokHX3j3c3whN3eOynHXNCgkg2bKq4
         w7O/lX8j7GVEfBVprcZZi+tQYCB1IE+FibWAz2r4g38Op6GSyX9oaZhIJJt+QG1pnuqk
         Hkazjnytrd7uIFSImDHaCdNeIPbCKYpLQBg9X5pq2/xuOaWJXXOzpQfa1LidPTFBQK6p
         Z8WrSAIYDHlKpF9RI/s8JOCjgHFH6P7iiHeoPldjM/EaryNXakSaal/c5erqv3daYcbm
         ux+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=yvlaGYu74Bunv8MMdTySj6vH2daxNT/pzK1EWYa8ZqM=;
        b=RTXphV8NbQsGM3o8j2AYoA2rGRCBbH3McmX0p6wG/p+lEUqHR2vLf+UcYSC2vbRcym
         jmNCX372IAC4C4l3yBVcDLq55QGtsDyvLmkeuNxqM2rDVIRSD+AuauZ0F58GnlOKlxdT
         yh/Vo5GVZCdkh0xNYcggm9pCbsAsC+2PGWbYuMRwAT9yejZ7UzhU4lGgpUEM0mv3dH5X
         hZYhIOVf59ZU4XeUBdRct8s1ohMeL9E+wlE5rlpxXNTbnf2QW9fln6atVCFiF/oBtSff
         hoeotHcXvg+kR8kdLWWy76T/hhpOZKzs3SqnjzlnlKtgFW6bY1E8owDaY8ngLfry5RKg
         jxkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sq6ebBoK;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id 144si862063oii.2.2019.11.04.05.31.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 05:31:57 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id p6so18393081iod.7
        for <open-iscsi@googlegroups.com>; Mon, 04 Nov 2019 05:31:57 -0800 (PST)
X-Received: by 2002:a6b:c916:: with SMTP id z22mr23611610iof.267.1572874317138;
 Mon, 04 Nov 2019 05:31:57 -0800 (PST)
MIME-Version: 1.0
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
In-Reply-To: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Mon, 4 Nov 2019 08:31:45 -0500
Message-ID: <CAK3e-Eamy-nQLNqruGuUDcOd1cF4nmGQ8GqBxCnuuy4rrM7cpQ@mail.gmail.com>
Subject: Re: iSCSI packet generator
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000f3100b0596855698"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Sq6ebBoK;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--000000000000f3100b0596855698
Content-Type: text/plain; charset="UTF-8"

Hello,

 Can you provide a little more info?   iSCSI is for storage, so unless your
'server' is running an iSCSI target service there won't be 'iSCSI' traffic
to monitor.

 If you do have an iSCSI service running then providing a disk via that
service to the 'client' then doing normal I/O to that iSCSI disk will
provide all the traffic you will typically need.  I.e. discovering the
device, formatting the disk, doing writes and reads, etc.

 What is it that you are trying to do?   iSCSI is the transport for SCSI
commands over a network.   You can use SCSI tools to generate SCSI commands
to that disk, then the iSCSI initiator on the 'client' will create the
respective iSCSI packets.

 Regards,
Don




On Mon, Nov 4, 2019 at 5:49 AM Bobby <italienisch1987@gmail.com> wrote:

> Hi
>
> I have two virtual machines. One is a client and other is a sever (SAN). I
> am using Wireshark to  analyze the iSCSI protocols between them.
>
> Someone recommended me, in addition to a packet analyzer, I can also use a
> packet generator. Any good packet generator for iSCSI client/server model?
>
> Thanks
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-Eamy-nQLNqruGuUDcOd1cF4nmGQ8GqBxCnuuy4rrM7cpQ%40mail.gmail.com.

--000000000000f3100b0596855698
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>=C2=A0Can you provide a li=
ttle more info?=C2=A0 =C2=A0iSCSI is for storage, so unless your &#39;serve=
r&#39; is running an iSCSI target service there won&#39;t be &#39;iSCSI&#39=
; traffic to monitor.=C2=A0=C2=A0</div><div><br></div><div>=C2=A0If you do =
have an iSCSI service running then providing a disk via that service to the=
 &#39;client&#39; then doing normal I/O to that iSCSI disk will provide all=
 the traffic you will typically need.=C2=A0 I.e. discovering=C2=A0the devic=
e, formatting the disk, doing writes and reads, etc.=C2=A0=C2=A0</div><div>=
<br></div><div>=C2=A0What is it that you are trying to do?=C2=A0 =C2=A0iSCS=
I is the transport for SCSI commands over a network.=C2=A0 =C2=A0You can us=
e SCSI tools to generate SCSI commands to that disk, then the iSCSI initiat=
or=C2=A0on the &#39;client&#39; will create the respective iSCSI packets.=
=C2=A0</div><div><br></div><div>=C2=A0Regards,</div><div>Don=C2=A0</div><di=
v><br></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 4, 2019 at 5:49 AM Bo=
bby &lt;<a href=3D"mailto:italienisch1987@gmail.com">italienisch1987@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Hi<div><br></div><div>I have two virtual machines. One =
is a client and other is a sever (SAN). I am using Wireshark to=C2=A0 analy=
ze the iSCSI protocols between them.<br></div><div><br></div><div>Someone r=
ecommended=C2=A0me, in addition to a packet analyzer, I can also use a pack=
et generator. Any good packet generator for iSCSI client/server model?</div=
><div><br></div><div>Thanks</div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/8a89dcdb-8fae-4c97-9a76-db621b01bcaf%40g=
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
om/d/msgid/open-iscsi/CAK3e-Eamy-nQLNqruGuUDcOd1cF4nmGQ8GqBxCnuuy4rrM7cpQ%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAK3e-Eamy-nQLNqruGuUDcOd1cF4nmGQ8GqBxCnuuy4rrM7c=
pQ%40mail.gmail.com</a>.<br />

--000000000000f3100b0596855698--
