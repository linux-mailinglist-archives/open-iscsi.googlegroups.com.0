Return-Path: <open-iscsi+bncBCYMVIPVXQMBB272R6PQMGQEIBNUETQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCBB68F860
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 20:52:14 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id 68-20020a4a1547000000b005170f10fc55sf7440oon.10
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 11:52:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675885933; cv=pass;
        d=google.com; s=arc-20160816;
        b=AowHJfFxxpX7EJfCllW1sAc06OYOr25/8N36pgU2ClI6X24ur7ICw2n/eePkp0FWdF
         Z7LbC5lnXDUhFTuidTI34LdDEm1S2ofa2t8sDjBFVym2E0ypufY7KcMcX753sef5ylVj
         UgZC1PYCm+JJsjfKfMqAjddqeVDRMKr+BTwt3CBSp01A2XfsrDKhLxHVwqVqXd8+ewHP
         R3dIR8CxP3w4orZIPjy/vOiuW9kdxJKOFkJkWIbolEiNMvJ0c2ObXj4SgSqILvjc69N5
         LjP/SSgJMFvOjToVm4TIbygUj79GTU5xA6xS2ozdQ+8Y7TlQx1erRkZjNyUK4EfgP7oM
         qLTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Z40D+R1SZO9gj5a7k0HzegArL7WKeI3RG6uK2aS2qAY=;
        b=QhSXYUPfSB1zrP7310iXvIsP/TP0VU5Q6zzofgcIYCMte5im5k4ItPstrxT0SmxK/7
         VWUyMG3CaeU92NMvv5MxbojJS8GNXiaju0zpov6t9csP5vzWSpViKLuZBU9x14mB2e4d
         CBIh2+KHpF/Ewj8X+1KuJgZ7yFtuo/vtcF0ClZ0Hi/ZPKCqAwQF/dJ4WwT+U6yVVmvEb
         ZwgLJHc13+YPOBiptN280AyvUZqW1uoUV4KXY9KqyWQaNARkC17MNX0E0Fwd+QcM3O5H
         nHxM8G4UVA6nYSPSlud7OvFOBng03Y/w2MuRoISySFMrC7PzaDrB4jGeyD2ZzSjqxL+J
         7jig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="MQ8aRTo/";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z40D+R1SZO9gj5a7k0HzegArL7WKeI3RG6uK2aS2qAY=;
        b=KBXOVjfyq0vnfwPimdEgTQvcVPU7prVIQ9SIWGKlQ9fbp5tvzBOMl333U2LezeyqdD
         8XcUdlKNj3qo5y5qwRzKnxTpDLG/Z90YA1kR8nTCiH49qk8Yeybo2Ov5nodTHioWF5FY
         czurih8y1BEeMVO0dGUeNt7SGuveURVXXA1EWBkfUNraJNKebg8aY/RrncWlrAiwKa3R
         K/4LzuLJnOS6YUD0kpZYOtL/NTdXIqVIWUQBf12gYqUd8YSIcsHzCWlrSXWJGEaaa+j3
         CV+q2nDuINDyl8ef61HSCHcid/hOADb4E0bl6V7Ppd06LRLtX8jiJoc9j5WL8bf+IvA1
         qVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z40D+R1SZO9gj5a7k0HzegArL7WKeI3RG6uK2aS2qAY=;
        b=KmvBUT9DP3lJILQ0zxrUiZmS5Oq48TZI0rcyR79QocazDQQm6cbovEqHtJORzxp6t5
         XrxMiNK/IbN/VEZSEzHkRqDjKaQuiZOy5ZhoKSj2SCdW9AP1nAsg19ofvTjPyIRX8aVd
         GFtrlbErxe2MvEFcFZVyXgCPdl1UDHsEAlZiWaIjq/uCOLFqQzTKKeeQq/Ygtovuqj1W
         H8j+1MZXYui7gqWKtetsj+6Gi/I2nwni15+L77sdArmZCOIPUpvm6JTzHtO6e88mcUpQ
         QRIekFHaJfVQr9qohjhXJwAuTGAY3hRDZcSdRrVom3/MKhXiwAU9f1L2xEK32MtCGWvv
         j9AQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKU4MKsWUwatct9XOiK2YrpWZXquOHxoNFWLn2tBY2s7/xdCMORz
	Iy0hVG8/KTk5plN3EsQIEuQ=
X-Google-Smtp-Source: AK7set+IPxApaYBgSy6zozP1pzgt2e7YTiBF272hdn1A/BwO/biq4w8szNbFe/Esgw+TmGpvk0PlYg==
X-Received: by 2002:a05:6870:80ce:b0:16a:9ca5:72fc with SMTP id r14-20020a05687080ce00b0016a9ca572fcmr246350oab.39.1675885933011;
        Wed, 08 Feb 2023 11:52:13 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:5814:b0:150:5959:52ad with SMTP id
 r20-20020a056870581400b00150595952adls8694oap.3.-pod-prod-gmail; Wed, 08 Feb
 2023 11:52:11 -0800 (PST)
X-Received: by 2002:a05:6870:700f:b0:163:9196:83bd with SMTP id u15-20020a056870700f00b00163919683bdmr4397830oae.37.1675885931336;
        Wed, 08 Feb 2023 11:52:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675885931; cv=none;
        d=google.com; s=arc-20160816;
        b=HEx5N/miAhazgnzCPfpRZ/yIz1L97kBn0uBw2+xFrYJjHerCv7lJgj0vS8iqNosOUj
         k8WUnADnUkCg1SRE9QcZdkYEa7aejzLl0wyaa2x3PnLSKJHQP1IbO2P0UcM5Whuzn92z
         CdnSUBdOns2NIGqKaPtHHJ0yedYwzU7OWUFcuqLW/vDeASIyU8YGwae7FmZQvOyQ3Wih
         4SryJDB4dB8wtsuhShO48XmUK0bqd61/tKBK1KY7ORaSxjb/5bP1bJskbgWJx/54vGi6
         +fRROttKlTg3hRn3UPUUTFjLsfTQC1AMCTFVIzJp8Pl7XXj93s9rq7EFeXR0vIIlNU41
         zRJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=V8BEn8Yu1/PsAK9jjwlAyXqu0bO9nF4/qnNv6DwG5MM=;
        b=C/KINnuLVRwkTBVujqmBLBv5mFoGU3SNZXQqpSY05YaQOs3OayefbYZ9Zbe8wA7Bd+
         abVo3neFCsbFauKFc6eykvwYJuDQv6nU4bwIe5shYwg/sJkQgwjRZkial8fSXoPzynut
         waFkX+V84K+GANtKYmItBHy4bUbN1cT59iRhir+U4wPJMEDvGKwWatvvuiSz5EpJVtG2
         HphkjPu5TFEU1eTdQbFi/sqFVilxtWji9usvVcMKDh1T9NLvDFX0/kG2Ee1x8AE2GkvL
         NHRcSN3GMJ1Oytj14A6id7TT3wir1hfczFvk0t462oo/7yzONkTA1jSJL9nWYR+T5UAv
         5Apg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="MQ8aRTo/";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id en21-20020a056870079500b001627c709dc3si1034208oab.3.2023.02.08.11.52.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 11:52:11 -0800 (PST)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-631-L6Q84dj6MuSJGkeuSdjQxw-1; Wed, 08 Feb 2023 14:52:08 -0500
X-MC-Unique: L6Q84dj6MuSJGkeuSdjQxw-1
Received: by mail-lf1-f70.google.com with SMTP id i13-20020a056512340d00b004b8825890a1so13319lfr.1
        for <open-iscsi@googlegroups.com>; Wed, 08 Feb 2023 11:52:07 -0800 (PST)
X-Received: by 2002:a19:c219:0:b0:497:9810:acfc with SMTP id l25-20020a19c219000000b004979810acfcmr1644919lfc.50.1675885926195;
        Wed, 08 Feb 2023 11:52:06 -0800 (PST)
X-Received: by 2002:a19:c219:0:b0:497:9810:acfc with SMTP id
 l25-20020a19c219000000b004979810acfcmr1644914lfc.50.1675885925897; Wed, 08
 Feb 2023 11:52:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1675876731.git.lduncan@suse.com> <9ff09a3d-1a75-436a-bbc3-0f154285cfa3n@googlegroups.com>
In-Reply-To: <9ff09a3d-1a75-436a-bbc3-0f154285cfa3n@googlegroups.com>
From: Chris Leech <cleech@redhat.com>
Date: Wed, 8 Feb 2023 11:51:54 -0800
Message-ID: <CAPnfmXKK5yfB8gy5eaKOW6GsxqH4AHUy8ABtv19KrkTXB=sdiQ@mail.gmail.com>
Subject: Re: [RFC 0/9] Make iscsid-kernel communications namespace-aware
To: open-iscsi@googlegroups.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000004c322705f43599bc"
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="MQ8aRTo/";
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

--0000000000004c322705f43599bc
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 8, 2023 at 11:17 AM The Lee-Man <leeman.duncan@gmail.com> wrote:

> I wanted to mention some issues I've discovered as part of testing this:
>
>    - Currently, only some sysfs entries are going to be different per
>    namespace
>
>
Anything that's directly related to the iSCSI host, session, connection,
etc. should be filtered, I think.  SCSI mid-layer objects and block devices
are not.  That seemed the cleanest break for being able to isolate the
control plane to a network namespace, which is the isolation that I've seen
asked for.


>
>    - This means that the Configuration and Initiator Name are going to be
>    common to all running daemons (this is /etc/iscsi)
>    - This also means that the Node database (and discovery DB, and
>    interface DB) are common to all running daemons
>
> These changes were about making the kernel to iscsid interfaces namespace
aware, so that iscsid could be containerized.  If you were to do that,
wouldn't you give iscsid a separate filesystem view with different
configuration and record database space?  I think you're right that there
are other resources that shouldn't be shared between multiple instances of
iscsid, and maybe protecting against some of that misconfiguration needs to
happen in Open-iSCSI.

- Chris


> I'm really not sure all running daemons should have the same initiator
> name. If we think of them as separate initiators, then this seems wrong.
>
> Sharing the Node database may not be a good idea, either. This assumes
> that nodes discovered (and saved) from one namespace can actually be
> reached from other namespaces, but this may not be true. Having the Node DB
> and initiatorname shared means the different iscsid instances must
> cooperate with each other, else their requests can collide. Also, I can
> imagine situations where different daemons may want to set different
> configuration values. Currently they cannot.
>
> On Wednesday, February 8, 2023 at 9:41:02 AM UTC-8 The Lee-Man wrote:
>
>> From: Lee Duncan <ldu...@suse.com>
>>
>> This is a request for comment on a set of patches that
>> modify the kernel iSCSI initiator communications so that
>> they are namespace-aware. The goal is to allow multiple
>> iSCSI daemon (iscsid) to run at once as long as they
>> are in separate namespaces, and so that iscsid can
>> run in containers.
>>
>> Comments and suggestions are more than welcome. I do not
>> expect that this code is production-ready yet, and
>> networking isn't my strongest suit (yet).
>>
>> These patches were originally posted in 2015 by Chris
>> Leech. There were some issues at the time about how
>> to handle namespaces going away. I hope to address
>> any issues raised with this patchset and then
>> to merge these changes upstream to address working
>> in working in containers.
>>
>> My contribution thus far has been to update these patches
>> to work with the current upstream kernel.
>>
>> Chris Leech/Lee Duncan (9):
>> iscsi: create per-net iscsi netlink kernel sockets
>> iscsi: associate endpoints with a host
>> iscsi: sysfs filtering by network namespace
>> iscsi: make all iSCSI netlink multicast namespace aware
>> iscsi: set netns for iscsi_tcp hosts
>> iscsi: check net namespace for all iscsi lookup
>> iscsi: convert flashnode devices from bus to class
>> iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
>> iscsi: filter flashnode sysfs by net namespace
>>
>> drivers/infiniband/ulp/iser/iscsi_iser.c | 7 +-
>> drivers/scsi/be2iscsi/be_iscsi.c | 6 +-
>> drivers/scsi/bnx2i/bnx2i_iscsi.c | 6 +-
>> drivers/scsi/cxgbi/libcxgbi.c | 6 +-
>> drivers/scsi/iscsi_tcp.c | 7 +
>> drivers/scsi/qedi/qedi_iscsi.c | 6 +-
>> drivers/scsi/qla4xxx/ql4_os.c | 64 +--
>> drivers/scsi/scsi_transport_iscsi.c | 625 ++++++++++++++++-------
>> include/scsi/scsi_transport_iscsi.h | 63 ++-
>> 9 files changed, 537 insertions(+), 253 deletions(-)
>>
>> --
>> 2.39.1
>>
>> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/9ff09a3d-1a75-436a-bbc3-0f154285cfa3n%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/9ff09a3d-1a75-436a-bbc3-0f154285cfa3n%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAPnfmXKK5yfB8gy5eaKOW6GsxqH4AHUy8ABtv19KrkTXB%3DsdiQ%40mail.gmail.com.

--0000000000004c322705f43599bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Feb 8, 2023 at 11:17 AM The Lee-M=
an &lt;<a href=3D"mailto:leeman.duncan@gmail.com">leeman.duncan@gmail.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div>I wanted to mention some issues I&#39;ve disc=
overed as part of testing this:</div><div><ul><li>Currently, only some sysf=
s entries are going to be different per namespace</li></ul></div></blockquo=
te><div><br></div><div>Anything that&#39;s directly related to the iSCSI ho=
st, session, connection, etc. should be filtered, I think.=C2=A0 SCSI mid-l=
ayer objects and block devices are not.=C2=A0 That seemed the cleanest=C2=
=A0break for being able to isolate the control plane to a network namespace=
, which is the isolation that I&#39;ve seen asked for.</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div><ul><li>This means=
 that the Configuration and Initiator Name are going to be common to all ru=
nning daemons (this is /etc/iscsi)</li><li>This also means that the Node da=
tabase (and discovery DB, and interface DB) are common to all running daemo=
ns</li></ul></div></blockquote><div>These changes were about making the ker=
nel to iscsid interfaces namespace aware, so that iscsid could be container=
ized.=C2=A0 If you were to do that, wouldn&#39;t you give iscsid a separate=
 filesystem view with different configuration and record database space?=C2=
=A0 I think you&#39;re right that there are other resources that shouldn&#3=
9;t be shared between multiple instances of iscsid, and maybe protecting ag=
ainst some of that misconfiguration needs to happen in Open-iSCSI.</div><di=
v><br></div><div>- Chris</div><div>=C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div><div>I&#39;m really not sure all running daemons=
 should have the same initiator name. If we think of them as separate initi=
ators, then this seems wrong.</div><div><br></div><div>Sharing the Node dat=
abase may not be a good idea, either. This assumes that nodes discovered (a=
nd saved) from one namespace can actually be reached from other namespaces,=
 but this may not be true. Having the Node DB and initiatorname shared mean=
s the different iscsid instances must cooperate with each other, else their=
 requests can collide. Also, I can imagine situations where different daemo=
ns may want to set different configuration values. Currently they cannot.<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gma=
il_attr">On Wednesday, February 8, 2023 at 9:41:02 AM UTC-8 The Lee-Man wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From: Lee Du=
ncan &lt;<a rel=3D"nofollow">ldu...@suse.com</a>&gt;
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

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/9ff09a3d-1a75-436a-bbc3-0f154285cfa3n%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://g=
roups.google.com/d/msgid/open-iscsi/9ff09a3d-1a75-436a-bbc3-0f154285cfa3n%4=
0googlegroups.com</a>.<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAPnfmXKK5yfB8gy5eaKOW6GsxqH4AHUy8ABtv19KrkTXB%3DsdiQ=
%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.go=
ogle.com/d/msgid/open-iscsi/CAPnfmXKK5yfB8gy5eaKOW6GsxqH4AHUy8ABtv19KrkTXB%=
3DsdiQ%40mail.gmail.com</a>.<br />

--0000000000004c322705f43599bc--

