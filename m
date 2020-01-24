Return-Path: <open-iscsi+bncBDHNJVU4QYDRBAO7VLYQKGQEAYXOXUQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AC21479A3
	for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 09:49:06 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id n17sf362196wmk.1
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 00:49:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579855746; cv=pass;
        d=google.com; s=arc-20160816;
        b=GhuOQMPnf2w7p4IfWJav+DQ8fkqGHxI1w/xrRch4eUdt4AzAiAy1VwtKxQ6RpF7CK4
         QaA/8QrswDLR+zi71/AgmiCFKKjiqw6nisstjSolE+vpYiucuEWSyv08HUl+vgYzAw1v
         wRnY/3J6AbhcDX9kpk9pDsGxZTxQpXA9nPL6sNJvnWGktzMajhb9Wh7AdVrndlIw5wWV
         iE+e9PyuGfBDsQ5mQq8rFaiwItrOeFBYADSYRn9M45Lz3fSNqHcUUtFU/6vm0cJV70JT
         8MZIVmVcQ7cgTcM0nRqMToJKGUela+8lnqmV/1oOmw9kP9jk64ld2g7cpgfab6gi0L1Q
         v94g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:reply-to:to:from:subject:sender
         :dkim-signature;
        bh=eEYHq9O8cM5uHL1qbcYN0D9CF7zDZcgeIISgmYvungE=;
        b=RyMA616kcTK0b7lpv6miG1JyQx4cUQBmcXE1ni4tT0l2oZt/tWVqj0kTH0dCoQhjR1
         fPPFx9V50I3LDc/GNhPP65eH370DK5243tFbAX03ecGfekivKzAKHrXDTrDNQ9zc6BOf
         7sffp90/SLh06C6+c4VSlGAyT8q9a9X2Ogr4aBBA1gNP1gYZZboWiTbG3/x9VilYMatg
         +pM+kle7PTv8Endm6Nu/zbDkHh8Afp56rJnwyhi5cL+gHYxZfyWEk0G7zUs7p9/yhbao
         UoJIlwQ0fwKi7vkkDXrG8y9Y8T+qooSHXDSxdlfBWwkANIJOHZ1b6t+WTzL2W+v6krIp
         Y4EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vst@vlnb.net designates 217.72.192.75 as permitted sender) smtp.mailfrom=vst@vlnb.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:reply-to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eEYHq9O8cM5uHL1qbcYN0D9CF7zDZcgeIISgmYvungE=;
        b=VNFLYzLLlDIPkZN/lVordAoDv8CvYxNbESCYqu6gqyjkA/+JiU760y0JQ56YlNaQ/i
         gNuWH3pZ/kG7QV24gCGf84tbwLLkH/u2hpkqjbsruvDho/fd9xtFPaFrRcvqz/BUMAyQ
         y9RJ6y99RBrAN0OwWD+7kMJLhU6rqn50uiFfckmf2e5QSH+q3cXYxY8+zlXIEck6SKx3
         1ZhLbg15yZcPGqd1yMq4jiq0/Waj1bPuJtgQo0gQIH2+llEKNSD/LeYT11fZjiCfu6Ue
         zPhQQgLt6OF+fqmrN1mpe//++LNB3zW9kXmeTzUKdx2op1AunmpNqr7YW6GXlCu4dd82
         O6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:reply-to:references
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eEYHq9O8cM5uHL1qbcYN0D9CF7zDZcgeIISgmYvungE=;
        b=sSKG1j5Xep3xBewgeUoYB0yfyhfAJSNYRqeOav4zpGdyYYCEywULtGOf5t57JtgPsH
         oeShb9aPIy+i0dXSAV02UU4STAeHwpuMa1wmd55W8NRAUjVZ4Lx/miBNOB37pxl/HbWl
         o/5WYEBJ5pYX3PCqg2mIqZU5PkTPYOiS9hcmwMPerRqBPuUIaBOVDuamDz7/nHeivUq9
         WcSTWk+J5cmsVT4+IS2IciH6l4f0QJfT8hYQ0phPd2dPEkiJ3sPcxm/VW6PLbcelog20
         vTcEcoOZZhvtz3XaqsPWSANgcUwKxuk73AOH4FG18JJox4a8UtelH/+fV9HtImNinGV+
         OUeg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXOVlOx3toNWnUoq9ZAjhl1p32HBXf7UCA6n+9IPt3oSXRHc6Mt
	9vH+3jFxJdGhferX6jj43lY=
X-Google-Smtp-Source: APXvYqx9hIQAlW/nTHTH/ViWip3xt/u4rdmFjTLf+kfB0+AjRX1FQnciTlukHvUVAn/LZ2dFkap3/w==
X-Received: by 2002:a1c:6408:: with SMTP id y8mr2268242wmb.130.1579855745832;
        Fri, 24 Jan 2020 00:49:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:6650:: with SMTP id f16ls1021750wrw.4.gmail; Fri, 24 Jan
 2020 00:49:05 -0800 (PST)
X-Received: by 2002:adf:fe43:: with SMTP id m3mr3141307wrs.213.1579855745380;
        Fri, 24 Jan 2020 00:49:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579855745; cv=none;
        d=google.com; s=arc-20160816;
        b=YI/GKWZ38s8S3YAP5k5gdXpeEgm1rywqzCg0xQ2LpiyUjkYQWTt0wvB5v1HX71pha/
         SxQK8HWc9l8P6XUB6UDOknLIG7CBaiHBe3JI7aa6rXW1dHumRARtEJXcCityzs3wk5cp
         4MCOFmQ7HSR4XJrk8lw/fXT5fYG6tT912IOHQNtXBD2lxr3peJQnXtHnSO72YcSI5bP7
         OOIYYqGAAsT20nTguWO+UPzVqoe3dVwRpgteC+vr4/aPzq4VJMMJg9ui7psyTGdFa1pz
         0vIQouwO9BIoGKjl/miBs39TcXL56Aio6BPsGJQJDr3SH8uJ6Ggx6tJxMAaseMx8C4JW
         lQGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:reply-to:to:from:subject;
        bh=okb4TaDFwfJum01pZBmmp7ZYDigrQPsrldf37eUaKpM=;
        b=ueD/wPeyT7NCqCSRswqLQEJLyGJML2TKIbFQRrtJUf64+DqM0tEB1TYlesHM/DmIZK
         zmVLDlG01K5fGgXxiXA0zs3Xx8OFbNO5FYD7/TWGPZ6ena3DMZkpYWXiRtxohC60yCB3
         HQyvTYmUYZ3adwSIZ2xGGTsaXmf7BnVU/LhuBxcdOrE4bu+5g8ZWParqSQZHNnii/SQN
         vtjpkxNsvd19tT7gntbCZYv9TM32Zg3dSTw8JD0B+CmjRQ62GbsoxxdKewXY7UpcnFvz
         u1aUrKwaX+7ZiKmWbmoVaX2Fi444P1dtWLcVP/GWRCXTOWpVdjgEGJAWvK7V/vZvO/vZ
         SpeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vst@vlnb.net designates 217.72.192.75 as permitted sender) smtp.mailfrom=vst@vlnb.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id 202si194140wme.0.2020.01.24.00.49.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 00:49:05 -0800 (PST)
Received-SPF: pass (google.com: domain of vst@vlnb.net designates 217.72.192.75 as permitted sender) client-ip=217.72.192.75;
Received: from [192.168.1.83] ([108.201.190.22]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.179]) with ESMTPSA (Nemesis) id
 1MC2sF-1ilEva3y5V-00CV8i; Fri, 24 Jan 2020 09:49:04 +0100
Subject: Re: iSCSI Multiqueue
From: Vladislav Bolkhovitin <vst@vlnb.net>
To: open-iscsi@googlegroups.com, The Lee-Man <leeman.duncan@gmail.com>
Reply-To: open-iscsi@googlegroups.com
References: <fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1@googlegroups.com>
 <8f236c4a-a207-4a0e-8dff-ad14a74e57dc@googlegroups.com>
 <1a730951-21eb-ae5f-a835-ad92c512978c@vlnb.net>
Message-ID: <846665ef-d238-8abd-8d1b-72e494af9dd1@vlnb.net>
Date: Fri, 24 Jan 2020 00:49:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1a730951-21eb-ae5f-a835-ad92c512978c@vlnb.net>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:wH6qX/HHxUnprpzYjuZlvVhvePkd3AUwtdyskGCRhSY99a2pmkx
 eUei3xQuzFj0w55XjNTf6jgZphUwpFsSxQMHo13NL/zhcx6XewRfeyDJaP9EZaIs4Dfj0n0
 Oh6UKLwmrvvOK/VUHNQSpAPqVK9ZN63iSlrcFcho0VuGzdHAnqoe3wyB7y4R69NkIC5tgTA
 BMSx2x3UExYL/9qR2y32w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+nxCv8Ax9io=:7qFkBroTblB/MeTDNAlj6h
 B3eJBgjZjegSA0cPWbleTwKk9PDYZmwKo4azkd1eLOwr1H0WJeAnbnHrA61zHuBA3PphqLI3P
 B566OBrlG6oNIXtn6Grh+BPSiqjGqvQWH0BlvCYJ5LbR/uDWLE/D6RqyZLiTxnKuiipdjsPVV
 vCZ2ZBDNpA+m4Pm3ov9JAy66KXqsEWAk+G93edja3oDIQmsTXnDAVZmK4ASCAhRJVIohzTtBa
 tnuRAnUufb6Cca7lybug7Fm8ZFtkASQVSW0LLfEsUqFy+Kx+cyUd5f+HK7ikRiuWrNcZ/RAml
 l01TSC/L6Ys4myEHUbde78q0SaJbhsLjIHMEuZvnPUCMQKPL6sLppSm46t7BXLxqDMirkCvNy
 OUpIxYYkXOQFwwlniKewel7QOythEtnMic3I5hHP1Pyyhhj0W3hRmSBCNhW7pf+TprmJeEhsq
 mXoKkx4lCPzb2729BvpYL7aA/9Y7KobWgoRGmmRGf1qnpsEToxuKPz5E14c3LMaZ4mFZ+Gjwv
 oK0dK+iJQmKAS1Hy0QWuyAi0B+qaB8QcEExItSJzssYM7GpGvQrGyOxSWGMcA2tSEC7Kn3XjH
 Xslhyrr8J6hNr10LuiSTERNA5LqdvomEjvXrWSmd96W7Ljg25qlgnPzNoLVkjyXy3iSzNrm9G
 CGl5gv8CVuxz4OpWVwCr9ZS1qFSGQma1PBuTFn75ALTDLPt5Lfz/oImvxVmrlBlmmb9YTykn5
 L+KXC6A7ZOOv/cXS12JftythG1wfBiZ7Mkt1RgYJ+jRIN73pTCkEUUgRzrsLrHLc+Ah7Rr3py
 +vq9gOjVBRls9MvQWYMoLmRVSmVayPmMu2pbHx20mVuJy/7poA=
X-Original-Sender: vst@vlnb.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vst@vlnb.net designates 217.72.192.75 as permitted
 sender) smtp.mailfrom=vst@vlnb.net
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



On 1/24/20 12:43 AM, Vladislav Bolkhovitin wrote:
>=20
> On 1/23/20 1:51 PM, The Lee-Man wrote:
>> On Wednesday, January 15, 2020 at 7:16:48 AM UTC-8, Bobby wrote:
>>
>>
>>     Hi all,
>>
>>     I have a question regarding multi-queue in iSCSI. AFAIK, *scsi-mq*
>>     has been functional in kernel since kernel 3.17. Because earlier,
>>     the block layer was updated to multi-queue *blk-mq*=C2=A0from
>>     single-queue. So the current kernel has full-fledged *multi-queues*.
>>
>>     The question is:
>>
>>     How an iSCSI initiator uses multi-queue? Does it mean having
>>     multiple connections? I would like=C2=A0
>>     to see where exactly that is achieved in the code, if someone can
>>     please me give me a hint. Thanks in advance :)
>>
>>     Regards
>>
>>
>> open-iscsi does not use multi-queue specifically, though all of the
>> block layer is now converted to using multi-queue. If I understand
>> correctly, there is no more single-queue, but there is glue that allows
>> existing single-queue drivers to continue on, mapping their use to
>> multi-queue. (Someone please correct me if I'm wrong.)
>>
>> The only time multi-queue might be useful for open-iscsi to use would be
>> for MCS -- multiple connections per session. But the implementation of
>> multi-queue makes using it for MCS problematic. Because each queue is on
>> a different CPU, open-iscsi would have to coordinate the multiple
>> connections across multiple CPUs, making things like ensuring correct
>> sequence numbers difficult.
>>
>> Hope that helps. I _believe_ there is still an effort to map open-iscsi
>> MCS to multi-queue, but nobody has tried to actually do it yet that I
>> know of. The goal, of course, is better throughput using MCS.
>=20
> From my old iSCSI target development days, MS is fundamentally not
> friendly to multi-queue, because it requires by the iSCSI spec to
> preserve order of commands inside the session across multiple
> connections. Commands serialization =3D> shared lock or atomic =3D> no
> multi-queue benefits.
>=20
> Hence, usage of MS for multi-queue would be beneficial only if to drop
> (aka violate) this iSCSI spec requirement.
>=20
> Just a small reminder. I have not looked in the updated iSCSI spec for a
> while, but don't remember this requirement was anyhow eased there.
>=20
> In any case, multiple iSCSI sessions per block level "session" would
> always be another alternative that would require virtually zero changes
> in open-iscsi and in-kernel iSCSI driver[1] as opposed to complex
> changes required to start supporting MS in it as well as in many iSCSI
> targets around that currently do not[2]. If I would be working on iSCSI
> MQ, I would consider this as the first and MUCH more preferable option.
>=20
> Vlad
>=20
> 1. Most likely, completely zero.
> 2. Where requirement to preserve commands order would similarly kill all
> the MQ performance benefits.

Oops, 'MCS' must be everywhere instead of 'MS'. Something "corrected"
this "for me" behind my back.

Sorry,
Vlad

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/846665ef-d238-8abd-8d1b-72e494af9dd1%40vlnb.net.
