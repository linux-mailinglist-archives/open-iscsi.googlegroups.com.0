Return-Path: <open-iscsi+bncBC755V5RXMKBB5VKVDYQKGQE6LX5JZI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C9714735F
	for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 22:51:51 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id 12sf2602396qkf.20
        for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 13:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OX6LlZyvLe/LDZP+p/5BmKzznq9Xcwwx4E0IW5bUazs=;
        b=QVUmaI0i0/2CPGGc7oasYUNFH3HDq9VhYpabGGIaia/XAjlA9jpC47nCOUNcVO9CKH
         HVfRGzk2ikSCqRdBWXKXlt7TZEpCtmq1CMRKhW/KX5FqqBDeQ6xIv61BUfHm1eakH/Of
         Z5ExUCKwuyXKw8SpV2FsybIrpjHZ3te5kr/a5DvrOjt3/pryckbPqslTW+dI6tJvK6LW
         DvBOhSP75BC9pJWxdRwcO1rcKaD3Kk2lZqR+aJLmFF6P9tb5w1cJb4fM957GBx4Vjweu
         8SIqBke2Lx3LsCJfpaFB2su1p5FI3G0tgMefZ1BHeAo8+48Vu2veO5pzzxaetX9DycjL
         Chkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OX6LlZyvLe/LDZP+p/5BmKzznq9Xcwwx4E0IW5bUazs=;
        b=g63uJE0chmJbLPtu5gzGjBvo9o5BnSh7g/8ayA47pdc+rZH5uQ7HBNDnZgp8hfMDAY
         HuEPTHwZfMjpdZ4gvhN2m9mjX5IZsHX7AAIxV9Bs+EqHevhcCMrKgOKDglkAXUV4E3D5
         9TvoIJ3iQ4fzYMU0/hVnEyWb1ZSXCeiiVTLgQ9tPzYUTOV+EqqnP7KM7WHCHeKA8zFdY
         ciQPXk/ywNyYXduS8QSQ0uNpTUtPsENOJwJhESNNrFhkToqrmkeN8LVXfCVXauDW++M9
         Rp7YHoob+hXBsGTP46h/XArI68BdaTAZIrQrfBxgFHNt/nMBvTU21bXDy0fhh4lQuXRm
         HfvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OX6LlZyvLe/LDZP+p/5BmKzznq9Xcwwx4E0IW5bUazs=;
        b=emyz/1KJoGiP4OWvxhol0+47L3rB36NjUCrJvVwhz/UrhiKbwDoDyncqI1sqD+E6dx
         z2xx2N/P3kICbUKIbuz8MNAus3GeYk7CX4GucduajqeIpUNashbyPiZ3RXgGWg/AhuTq
         DoOXaX24J3t81H1aU/QUugfQiVpfH6EE1NSRLbBg9sQhdBphVsWi1Vx99DByP2Oob95m
         T4U6a+VwYY0AxHHGPqNuKLQEFNNeg1ny8R3MV8kIDUcpj6gw8NlB1J+4hRbVWYkSc35c
         Ky6NfS4kUhVyAh5xVsTtxYDODTZsuV0ULG9EzI3SHLTjabkHZmSfZ6Dr4kaG+mgPMfF+
         0vvQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUxMgaZgtRGdO3CFEW9fsyR5Dp/RjtqrG32jq0OxHJE1ItzOQEy
	ITz0TZTNBrIqFDJHG8/jCNk=
X-Google-Smtp-Source: APXvYqzIYgBTZlN1Kso9wHLiog6XJ39Me54S7cwaAjiySiyDglUHEeeowFyJiYuW8eGqja2B6M+EhA==
X-Received: by 2002:a05:620a:1666:: with SMTP id d6mr307325qko.379.1579816310182;
        Thu, 23 Jan 2020 13:51:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:c30e:: with SMTP id n14ls174418qkg.3.gmail; Thu, 23 Jan
 2020 13:51:49 -0800 (PST)
X-Received: by 2002:a37:a80a:: with SMTP id r10mr344328qke.240.1579816309713;
        Thu, 23 Jan 2020 13:51:49 -0800 (PST)
Date: Thu, 23 Jan 2020 13:51:48 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8f236c4a-a207-4a0e-8dff-ad14a74e57dc@googlegroups.com>
In-Reply-To: <fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1@googlegroups.com>
References: <fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1@googlegroups.com>
Subject: Re: iSCSI Multiqueue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2967_1807882131.1579816308922"
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

------=_Part_2967_1807882131.1579816308922
Content-Type: multipart/alternative; 
	boundary="----=_Part_2968_607776948.1579816308923"

------=_Part_2968_607776948.1579816308923
Content-Type: text/plain; charset="UTF-8"

On Wednesday, January 15, 2020 at 7:16:48 AM UTC-8, Bobby wrote:
>
>
> Hi all,
>
> I have a question regarding multi-queue in iSCSI. AFAIK, *scsi-mq* has 
> been functional in kernel since kernel 3.17. Because earlier,
> the block layer was updated to multi-queue *blk-mq* from single-queue. So 
> the current kernel has full-fledged *multi-queues*.
>
> The question is:
>
> How an iSCSI initiator uses multi-queue? Does it mean having multiple 
> connections? I would like 
> to see where exactly that is achieved in the code, if someone can please 
> me give me a hint. Thanks in advance :)
>
> Regards
>

open-iscsi does not use multi-queue specifically, though all of the block 
layer is now converted to using multi-queue. If I understand correctly, 
there is no more single-queue, but there is glue that allows existing 
single-queue drivers to continue on, mapping their use to multi-queue. 
(Someone please correct me if I'm wrong.)

The only time multi-queue might be useful for open-iscsi to use would be 
for MCS -- multiple connections per session. But the implementation of 
multi-queue makes using it for MCS problematic. Because each queue is on a 
different CPU, open-iscsi would have to coordinate the multiple connections 
across multiple CPUs, making things like ensuring correct sequence numbers 
difficult.

Hope that helps. I _believe_ there is still an effort to map open-iscsi MCS 
to multi-queue, but nobody has tried to actually do it yet that I know of. 
The goal, of course, is better throughput using MCS.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8f236c4a-a207-4a0e-8dff-ad14a74e57dc%40googlegroups.com.

------=_Part_2968_607776948.1579816308923
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wednesday, January 15, 2020 at 7:16:48 AM UTC-8, Bobby =
wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8=
ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><br><di=
v><div>Hi all,</div><div><br></div><div>I have a question regarding multi-q=
ueue in iSCSI. AFAIK, <b>scsi-mq</b> has been functional in kernel since ke=
rnel 3.17. Because earlier,</div><div>the block layer was updated to multi-=
queue <b>blk-mq</b>=C2=A0from single-queue. So the current kernel has full-=
fledged <b>multi-queues</b>.</div><div><br></div><div>The question is:</div=
><div><br></div><div>How an iSCSI initiator uses multi-queue? Does it mean =
having multiple connections? I would like=C2=A0</div></div><div>to see wher=
e exactly that is achieved in the code, if someone can please me give me a =
hint. Thanks in advance :)</div><div><br></div><div>Regards<br></div></div>=
</blockquote><div><br></div><div>open-iscsi does not use multi-queue specif=
ically, though all of the block layer is now converted to using multi-queue=
. If I understand correctly, there is no more single-queue, but there is gl=
ue that allows existing single-queue drivers to continue on, mapping their =
use to multi-queue. (Someone please correct me if I&#39;m wrong.)</div><div=
><br></div><div>The only time multi-queue might be useful for open-iscsi to=
 use would be for MCS -- multiple connections per session. But the implemen=
tation of multi-queue makes using it for MCS problematic. Because each queu=
e is on a different CPU, open-iscsi would have to coordinate the multiple c=
onnections across multiple CPUs, making things like ensuring correct sequen=
ce numbers difficult.</div><div><br></div><div>Hope that helps. I _believe_=
 there is still an effort to map open-iscsi MCS to multi-queue, but nobody =
has tried to actually do it yet that I know of. The goal, of course, is bet=
ter throughput using MCS.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8f236c4a-a207-4a0e-8dff-ad14a74e57dc%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/8f236c4a-a207-4a0e-8dff-ad14a74e57dc%40googlegroups.com</a>.<b=
r />

------=_Part_2968_607776948.1579816308923--

------=_Part_2967_1807882131.1579816308922--
