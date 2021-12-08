Return-Path: <open-iscsi+bncBCYMVIPVXQMBBOXWYSGQMGQE62MAEBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFE346DEE1
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Dec 2021 00:09:48 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id y28-20020ab05e9c000000b002c9e6c618c9sf2320322uag.14
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Dec 2021 15:09:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639004987; cv=pass;
        d=google.com; s=arc-20160816;
        b=pPnOTwgNH3IGZgLR68I/7MwA6pQA2WZLE0h8qQS12LMWBx1l//mVQWq8kq60ZyL/0H
         5A6lF3PsihWD52BALIOpJ1yC1UKB3twBasFCCg8gCuCyA53zRqyG2tg2hYbdAMTQHyML
         QhyJnBrds5zkWNCi7qsCcDWqaaBwzZLqDEnwEAAxG8JG22trkMvm+J63Myl8vcNHhJjz
         MQeIhfwYo+eQXnW0G0uOtlOJ6Retx05IaBX2QfEUxUYs1rbVJSyX66VMWeuqSoTqnezj
         nATnq7ZGCELa/0/K6zSLplJgW6D79fpacAhFwQ4UF9kp7bPkqOQncTQz2GisnRfJAvOh
         HkcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=yc0LpSKNncKLeYUI5MiG+jlh8cvEO9hXeSIH29Rdy5g=;
        b=FGTTjrdprNf+y2h0JvDipL/nqWe5OI3UONtu1rvL2ySQz742GdQMtBVavRkhhNSCQP
         EHG5f0SxOHBC4RrXfIDBugk1Ccn4efiim5L/RA/JEUkvZ7P1yrO+OPm1y3WLEjpHhJAV
         EzCI7ELUPVooHlmKzX6b6WpJvkpGwYf14mcxALgxnl5rOQp71rPnRwezTaY0qCfUrIia
         7z7aDsB+Seg+GCPjX9Pn1K5vPaESA8VMrzaHWYi8lm3BXKe/QiE+JvKA2X5A85DOL982
         W+iW0rc8192t2ey0+a16l3xMSeGIVoWtTJhScW/CPtrz07nIni/OBD1+FGlNea/otOZY
         BsCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UXIHlC/q";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yc0LpSKNncKLeYUI5MiG+jlh8cvEO9hXeSIH29Rdy5g=;
        b=qCXg76jkETUdleWJQqdflToMBlAtGChuj3dKiyBTifsXR7eY62YM2xAWNL0fODD2Fh
         eU9zJMJtLN3t0+l2DTYYTW3g745aGLXdE7SnMWhuHzJC7zjS5vFFor9Q2sOSZFxHutsC
         ncxNZzDLLPd+1EDDsrISSKMEoL5Pt4HfFaaUwi7Qr+7mKQBvp3IL8SU7ApCydK3aKFuP
         j2FWz/rVdSII6BpyjRO0UXQnlyLybqDWEXbP/pUk/uUsFyzpcnaWxZlCE5KHqMCPtLv3
         jYc+eEu3bqoTKh6K7kjK7S+taMDUUV7X7gGBe/T2aZth3RxM3bqzrTS/N5H1AEWzoOjX
         JeJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yc0LpSKNncKLeYUI5MiG+jlh8cvEO9hXeSIH29Rdy5g=;
        b=Rk99kz7UvTgBJ76cWblHQ076AsNrzDRxtAhwWkHgqgew5peU/y3TcGUXGJQRWoQ6aG
         pH7Mssoo1aEru/joXebZEkiWLC0gFlaZF8SvVvkwpC2pwdr8p/8BoOtUMeTO+3XucrIa
         t/ykkxYdsbMrqAyLVfnuCaS7PXaFOnC8vdIwWMBWUAM8OAr6jwGqJPD8a+/2xqWMt69V
         WhdO+3sXylsGY6n3TJ7GJBYAqc2zKLTmdO35p+9Y2z655XmBfcAvqyrnPP5XD+qIW+4C
         b1QffBf9TKxCId3LQcbFQbRPUGq+LtJz9kcxDANY0S1kDKdmsIODQviWl7Rd8QAaRUgP
         if7g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533mnHB9Tb+fEd+1WAZVbQ9arOrKMwhbEq3pDEek/60SIrv3Um3J
	Gud8HkM++8E5ksdRQSljN7M=
X-Google-Smtp-Source: ABdhPJwi5tzXP9k4FzJvue2dQBBSa6UskcDOoE4aFk/6EadDj2hijv5Vt8A7xO8fZGUVbs3ZhEr4zQ==
X-Received: by 2002:a67:6684:: with SMTP id a126mr2260302vsc.22.1639004986986;
        Wed, 08 Dec 2021 15:09:46 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6130:309:: with SMTP id ay9ls663700uab.11.gmail; Wed, 08
 Dec 2021 15:09:46 -0800 (PST)
X-Received: by 2002:a9f:3142:: with SMTP id n2mr12756633uab.102.1639004986380;
        Wed, 08 Dec 2021 15:09:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639004986; cv=none;
        d=google.com; s=arc-20160816;
        b=Y0dShZCCVZhp2sZ/hk7e6N8hwndb4aJp7JH6X6s3xFZw2qEDvNxDO4LpR9NgNdijXF
         smxfEZAHQd4uYaO6Zi+xHPIn0V7pyHUPXFpqZ6TSMQafgTFmgSSi4YhciNhBgmWuy9T4
         wH7ezgwcfpLco4KtSMqaE6JqkADAf6091Rn/rXl2AL1Gu9Ac0BZj6sXpWCIW93zPQF0+
         2f/e68l/gulHlOx6hmKi79J/KDW7enkXk+4ep5F3S+JaWVKATpq0+6KgxdFub9vZoLq4
         s3X6kNWZWpjjUG62Oo++eAlZpaf14WNcNLrUloMB3CVX9Im69tBTrd+Ulu/+wfEMHUJ+
         jtlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=f8DdgYHtGQyppLbAeaHnp5pDTzwb5x2o+iRKnhFIeTc=;
        b=ffFFKQo6kiCLq3M+bxSLP+4hQIMjtG987a1hu1dPjAQlk8vQFlO4IXvQaLAo0nsDal
         3IOrpbrDnNbkOGBmsXlhFuF1dCt2wWPVmFYGjw5bWw8PdtpcSGl6CTBRSHhuHlHzl8r0
         aQK9LstoWR1jITAf7jAazeTylH5YsqmhHRoFZpbQXJXKFkBl4BVnKcuzel18lSZRhG4R
         qaV9OFkqfxw0/R0cBunCP4pc/4gOl4k5FzTILkR7UzBaA22hkGN0iATrjdUwE5yiQjkp
         z6RqrX+1VHzcyUO+piL0xmhMYYwtuMIugLKksdVshff2Nk8hKr323si/yPIn79sWbhvP
         BxSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="UXIHlC/q";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id 140si257712vky.3.2021.12.08.15.09.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Dec 2021 15:09:46 -0800 (PST)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com
 [209.85.219.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-581-c2NRlRaIPGqB5DHu0i4EKQ-1; Wed, 08 Dec 2021 18:09:43 -0500
X-MC-Unique: c2NRlRaIPGqB5DHu0i4EKQ-1
Received: by mail-yb1-f198.google.com with SMTP id s7-20020a5b0447000000b005fb83901511so7099495ybp.11
        for <open-iscsi@googlegroups.com>; Wed, 08 Dec 2021 15:09:43 -0800 (PST)
X-Received: by 2002:a25:ae87:: with SMTP id b7mr2119160ybj.497.1639004983205;
        Wed, 08 Dec 2021 15:09:43 -0800 (PST)
X-Received: by 2002:a25:ae87:: with SMTP id b7mr2119114ybj.497.1639004982839;
 Wed, 08 Dec 2021 15:09:42 -0800 (PST)
MIME-Version: 1.0
References: <1b70c5d5-bb56-4f35-948b-1a2cbde569ban@googlegroups.com>
In-Reply-To: <1b70c5d5-bb56-4f35-948b-1a2cbde569ban@googlegroups.com>
From: Chris Leech <cleech@redhat.com>
Date: Wed, 8 Dec 2021 15:09:31 -0800
Message-ID: <CAPnfmXLkC1tUWMS3cGiynB_-gvLSngsNwPpiyN-brQ14x9X_kg@mail.gmail.com>
Subject: Re: iSCSI initiator setting max_sectors_kb=4 when target optimal_io_size=4096
To: open-iscsi@googlegroups.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="UXIHlC/q";
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

Hi Alexis, I was just taking a look at the issue you opened with Red
Hat about this.

It appears to me that the sd driver for all SCSI disks is setting the
max_sectors limit for the queue to the optimal transfer length when
sanely reported.  So the SCSI disk driver is limiting to the optimal
length at all times, while the NVMe code is reporting different
optimal and maximum limits to the block layer.  The SCSI target code
is just passing the block layer limits through to the initiator, so
when exposing an NVMe namespace as an SCSI disk the smaller optimal
transfer length gets used as a maximum limit on the SCSI initiator.

I'm going to ask around and see if I can't get a better understanding
as to why the sd driver works that way and if optimal transfer length
when reported by SCSI disks are expected to be as small as this NVMe
device is reporting.

I don't think this is an iSCSI specific issue in this case.

- Chris

On Sun, Nov 21, 2021 at 6:31 PM Alexis Oosterhoff <alexisoost@gmail.com> wrote:
>
> Hi,
>
> Looking into whether this is a bug, or an expect behavior with kernel 4.18+
>
> RHEL 8.4 on AWS r5.xlarge hardware type, attaching nvme disks, observing the nvme device is configuring optimal_io_size to 4KB
> i.e.
> /sys/devices/pci0000:00/0000:00:1c.0/nvme/nvme4/nvme4n1/queue/optimal_io_size 4096
>
> When attaching this device remotely using Linux-IO, the initiator device is using the target's 'optimal_io_size' to set the max_sectors_kb.
> i.e.
> /sys/devices/platform/host1/session8/target1:0:0/1:0:0:0/block/sdb/queue/max_sectors_kb 4
>
> This does not seem to be correct behavior. optimal_io_size and max_sectors_kb should not be directly related.  Do not observe this behavior with RHEL7.
>
> target:
>  - RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64
> initiator:
>  - RHEL 8.4, 4.18.0-305.12.1.el8_4.x86_64
>  - iscsi-initiator-utils-iscsiuio-6.2.1.2-1.gita8fcb37.el8.x86_64
>  - iscsi-initiator-utils-6.2.1.2-1.gita8fcb37.el8.x86_64
>
>
> Thanks,
>
> Alexis.
>
> --
> You received this message because you are subscribed to the Google Groups "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1b70c5d5-bb56-4f35-948b-1a2cbde569ban%40googlegroups.com.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAPnfmXLkC1tUWMS3cGiynB_-gvLSngsNwPpiyN-brQ14x9X_kg%40mail.gmail.com.
