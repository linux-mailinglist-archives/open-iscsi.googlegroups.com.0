Return-Path: <open-iscsi+bncBC755V5RXMKBBXPKR6PQMGQERVPHKCQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C5368F7E2
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 20:17:52 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id op32-20020a05620a536000b0072e2c4dea65sf10899437qkn.12
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 11:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jpKfFa+6DIrlktBC+d02v2DUkicfmbsyujxHztK20Xc=;
        b=XsiWNs9cw+Yk+g72nqPxRdGS54EPCxcW36v6k2T+yo2N4h3iScvRE4Y2vn3+PbZ+01
         DNpqva1+bMeiKnBOO69o0Y60MQG1KkOxCKZXoNVRFoJVPRRNLrZpK+8MI4uRE0EuzxXu
         3xLXt3jn5LmZSdevecyJrhN5Obh/lyr5dg9Qzp5ANLvOJnZnA+2BEx/ghBUTJeCyQy76
         3hobWzbo/rDKsZv1J372o7LY8ZjJc20o+7DfV8DB5+BrsYyR6/zyEDOKWRvPNh42IS+E
         f2EEZP8oK5I+j6x85lReNM7cccicEjF4GFQqZMjhkIhOYfwAKXt01evyr04rmmg98fJH
         ejmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jpKfFa+6DIrlktBC+d02v2DUkicfmbsyujxHztK20Xc=;
        b=ATCppz3PsIwDYE/UkBaKGkLQXApQHyfDf9PyN3/NphZ2xBDJxzg43qtv67D9s4VWUO
         7BiIFKTgc1vlYoBjNybyVkSbeUyc1SwiEfdDE3LoQMenNZe5YrSUoRYyZTazNJFzZF8P
         /Aw2nBMVhMAKF6eycZMp8s3RO0hbUkSxsR9IAJLGJ4kRWiafXapMLhhhy0d9nBI/TQ0B
         wEFdx+a0or5xx+H99jusR8MjG/ocSbFaqRCt1MHSSO3OadfdIbcvnrGKoAesP5+O0Gn8
         w3hR0zW8vSKmUggsKUOqm7zPwKrU+srMdk96sJs98ElgerRJzZ8e2WQnbG5GpUG1I44K
         0VIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jpKfFa+6DIrlktBC+d02v2DUkicfmbsyujxHztK20Xc=;
        b=LmdojTd3OuuM6ytPvKZT6YekqVHjexihIuPNd6kOePw9EDocDoFt2uXTtOBOPzTGHr
         uqDtm5aGryCvKeDwKuxdbp9mmcLb+3BusniSEY9U1ZCU3t8V4JEzHXafCr7B4hO4QvL1
         FExu1aAKzsDrNnjTDLYS3ATw7fQFwjiEqpFFX/3XDPLSuXaco9z86Z1kjOwNXkaKolzF
         wUGOMbS9OeZ7JN091vOlyN7CS8qc3gZ9V0oSXWXxs3xyJztyWkLEz1eS1aEPDJsV5YNT
         hJC7iseabyF3bSiZ2xsVpISzlpTOoWb+T/ldz1ut0ewPjRBXkQ1+898s8215/597mvZN
         hk9g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVtbyXy9XCcvo++DbRPBhzv/yuMpPIz6RB7fOf4DzltVRrfVMds
	yq/LioDKZsewZPmPkjTYDrc=
X-Google-Smtp-Source: AK7set83HMIkaDksAzfSYNEiMQhICGqLpJ873iU3zOgoFhlDe/45nceFt8/qSpyW3j7Yi+Aesr/G3A==
X-Received: by 2002:a05:622a:4d0:b0:3b8:4aed:5e35 with SMTP id q16-20020a05622a04d000b003b84aed5e35mr1626682qtx.377.1675883870937;
        Wed, 08 Feb 2023 11:17:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:44c7:b0:71b:3402:f9a1 with SMTP id
 y7-20020a05620a44c700b0071b3402f9a1ls3308311qkp.0.-pod-prod-gmail; Wed, 08
 Feb 2023 11:17:49 -0800 (PST)
X-Received: by 2002:a37:bec1:0:b0:72d:2660:e189 with SMTP id o184-20020a37bec1000000b0072d2660e189mr924491qkf.126.1675883869241;
        Wed, 08 Feb 2023 11:17:49 -0800 (PST)
Date: Wed, 8 Feb 2023 11:17:48 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <9ff09a3d-1a75-436a-bbc3-0f154285cfa3n@googlegroups.com>
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
Subject: Re: [RFC 0/9] Make iscsid-kernel communications namespace-aware
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2060_65115817.1675883868656"
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

------=_Part_2060_65115817.1675883868656
Content-Type: multipart/alternative; 
	boundary="----=_Part_2061_437323500.1675883868656"

------=_Part_2061_437323500.1675883868656
Content-Type: text/plain; charset="UTF-8"

I wanted to mention some issues I've discovered as part of testing this:


   - Currently, only some sysfs entries are going to be different per 
   namespace
   - This means that the Configuration and Initiator Name are going to be 
   common to all running daemons (this is /etc/iscsi)
   - This also means that the Node database (and discovery DB, and 
   interface DB) are common to all running daemons

I'm really not sure all running daemons should have the same initiator 
name. If we think of them as separate initiators, then this seems wrong.

Sharing the Node database may not be a good idea, either. This assumes that 
nodes discovered (and saved) from one namespace can actually be reached 
from other namespaces, but this may not be true. Having the Node DB and 
initiatorname shared means the different iscsid instances must cooperate 
with each other, else their requests can collide. Also, I can imagine 
situations where different daemons may want to set different configuration 
values. Currently they cannot.

On Wednesday, February 8, 2023 at 9:41:02 AM UTC-8 The Lee-Man wrote:

> From: Lee Duncan <ldu...@suse.com>
>
> This is a request for comment on a set of patches that
> modify the kernel iSCSI initiator communications so that
> they are namespace-aware. The goal is to allow multiple
> iSCSI daemon (iscsid) to run at once as long as they
> are in separate namespaces, and so that iscsid can
> run in containers.
>
> Comments and suggestions are more than welcome. I do not
> expect that this code is production-ready yet, and
> networking isn't my strongest suit (yet).
>
> These patches were originally posted in 2015 by Chris
> Leech. There were some issues at the time about how
> to handle namespaces going away. I hope to address
> any issues raised with this patchset and then
> to merge these changes upstream to address working
> in working in containers.
>
> My contribution thus far has been to update these patches
> to work with the current upstream kernel.
>
> Chris Leech/Lee Duncan (9):
> iscsi: create per-net iscsi netlink kernel sockets
> iscsi: associate endpoints with a host
> iscsi: sysfs filtering by network namespace
> iscsi: make all iSCSI netlink multicast namespace aware
> iscsi: set netns for iscsi_tcp hosts
> iscsi: check net namespace for all iscsi lookup
> iscsi: convert flashnode devices from bus to class
> iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
> iscsi: filter flashnode sysfs by net namespace
>
> drivers/infiniband/ulp/iser/iscsi_iser.c | 7 +-
> drivers/scsi/be2iscsi/be_iscsi.c | 6 +-
> drivers/scsi/bnx2i/bnx2i_iscsi.c | 6 +-
> drivers/scsi/cxgbi/libcxgbi.c | 6 +-
> drivers/scsi/iscsi_tcp.c | 7 +
> drivers/scsi/qedi/qedi_iscsi.c | 6 +-
> drivers/scsi/qla4xxx/ql4_os.c | 64 +--
> drivers/scsi/scsi_transport_iscsi.c | 625 ++++++++++++++++-------
> include/scsi/scsi_transport_iscsi.h | 63 ++-
> 9 files changed, 537 insertions(+), 253 deletions(-)
>
> -- 
> 2.39.1
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9ff09a3d-1a75-436a-bbc3-0f154285cfa3n%40googlegroups.com.

------=_Part_2061_437323500.1675883868656
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>I wanted to mention some issues I've discovered as part of testing thi=
s:</div><div><br /></div><div><ul><li>Currently, only some sysfs entries ar=
e going to be different per namespace</li><li>This means that the Configura=
tion and Initiator Name are going to be common to all running daemons (this=
 is /etc/iscsi)</li><li>This also means that the Node database (and discove=
ry DB, and interface DB) are common to all running daemons</li></ul><div>I'=
m really not sure all running daemons should have the same initiator name. =
If we think of them as separate initiators, then this seems wrong.</div><di=
v><br /></div><div>Sharing the Node database may not be a good idea, either=
. This assumes that nodes discovered (and saved) from one namespace can act=
ually be reached from other namespaces, but this may not be true. Having th=
e Node DB and initiatorname shared means the different iscsid instances mus=
t cooperate with each other, else their requests can collide. Also, I can i=
magine situations where different daemons may want to set different configu=
ration values. Currently they cannot.<br /></div></div><br /><div class=3D"=
gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday, February =
8, 2023 at 9:41:02 AM UTC-8 The Lee-Man wrote:<br/></div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(2=
04, 204, 204); padding-left: 1ex;">From: Lee Duncan &lt;<a href data-email-=
masked rel=3D"nofollow">ldu...@suse.com</a>&gt;
<br>
<br>This is a request for comment on a set of patches that
<br>modify the kernel iSCSI initiator communications so that
<br>they are namespace-aware. The goal is to allow multiple
<br>iSCSI daemon (iscsid) to run at once as long as they
<br>are in separate namespaces, and so that iscsid can
<br>run in containers.
<br>
<br>Comments and suggestions are more than welcome. I do not
<br>expect that this code is production-ready yet, and
<br>networking isn&#39;t my strongest suit (yet).
<br>
<br>These patches were originally posted in 2015 by Chris
<br>Leech. There were some issues at the time about how
<br>to handle namespaces going away. I hope to address
<br>any issues raised with this patchset and then
<br>to merge these changes upstream to address working
<br>in working in containers.
<br>
<br>My contribution thus far has been to update these patches
<br>to work with the current upstream kernel.
<br>
<br>Chris Leech/Lee Duncan (9):
<br>  iscsi: create per-net iscsi netlink kernel sockets
<br>  iscsi: associate endpoints with a host
<br>  iscsi: sysfs filtering by network namespace
<br>  iscsi: make all iSCSI netlink multicast namespace aware
<br>  iscsi: set netns for iscsi_tcp hosts
<br>  iscsi: check net namespace for all iscsi lookup
<br>  iscsi: convert flashnode devices from bus to class
<br>  iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
<br>  iscsi: filter flashnode sysfs by net namespace
<br>
<br> drivers/infiniband/ulp/iser/iscsi_iser.c |   7 +-
<br> drivers/scsi/be2iscsi/be_iscsi.c         |   6 +-
<br> drivers/scsi/bnx2i/bnx2i_iscsi.c         |   6 +-
<br> drivers/scsi/cxgbi/libcxgbi.c            |   6 +-
<br> drivers/scsi/iscsi_tcp.c                 |   7 +
<br> drivers/scsi/qedi/qedi_iscsi.c           |   6 +-
<br> drivers/scsi/qla4xxx/ql4_os.c            |  64 +--
<br> drivers/scsi/scsi_transport_iscsi.c      | 625 ++++++++++++++++-------
<br> include/scsi/scsi_transport_iscsi.h      |  63 ++-
<br> 9 files changed, 537 insertions(+), 253 deletions(-)
<br>
<br>--=20
<br>2.39.1
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
om/d/msgid/open-iscsi/9ff09a3d-1a75-436a-bbc3-0f154285cfa3n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/9ff09a3d-1a75-436a-bbc3-0f154285cfa3n%40googlegroups.com</a>.=
<br />

------=_Part_2061_437323500.1675883868656--

------=_Part_2060_65115817.1675883868656--
