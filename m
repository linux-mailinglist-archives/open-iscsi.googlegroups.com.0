Return-Path: <open-iscsi+bncBCHZVHVFVMARBK4QVLTAKGQE52UH27A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id DA371112F4
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:03:23 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id u18sf1379532wrq.2
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:03:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777003; cv=pass;
        d=google.com; s=arc-20160816;
        b=W7YAxm4LmKJ41aQheJW9BX0v66rhRf4qLusu5hBNYe+GaDACJD2sEzFMdiAkiczYWW
         EU1Is8mg2EzRyPUobzh/d0G7dXJWmpH4gSIGCi7MbKvghVGAeSpqU9+4tbbAZX00NRrC
         C3HTV3GgijCaRGLU0GWWGsiwocAz/K3YB57uiqNkZhLJzYlch/AAPeyZ17GUt0kdsJcJ
         Vx0+E5KhJS/V+X9w1zweZ/ohOeT8McyuzDdryTAGntAoCKLE/O/eeEKvLj9blJJkAU+Z
         17oByeS3zr3tj8cXlp7DE275mZip8GCFC3lzrlrueoQXh1eLgNKUCJpJSmk4vUi8UWfL
         kJAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=0KASQWLZtqyUQ387Pv63OzY35I3IAB/A7rYtvKs2yjA=;
        b=oGpB8M3m2+vKbDHjScYiDyXmOmex6bH4Sivc2aDisHhsruyFmekmIFoBENLNVrngIJ
         IujmM52NCFG35ocLB7cF3VlV+iw5y0pobrIx371IAygseB5UTMFmJGaCmAPSNce+0v5K
         D1zEq35dO1ywy2MuxE3Ad3+/JytwOYpNkvEXnlhbR/kmNDKexpJvCmHw5SYops/I4wF4
         VZlPZjY54oRQl6y1zy/l+oDszVLJY+n8N6rGhs8pNSMacVfvOL37Y756DMScivCiPxX+
         tOL0hBd2fVQaiCzqTV609ONq+vYYEw1NMI51SUgUtfEqoJdPe0wczmr0VmWMt5xwHY9w
         EUeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0KASQWLZtqyUQ387Pv63OzY35I3IAB/A7rYtvKs2yjA=;
        b=FbztbRSP3Qape8m9GPUTM0D9hq3TFM2wkXCl2fPqxNIJtOn9Rvma0T9UtG9N4mW9EU
         mX398YY/HpCYj18nk3aPLd/UxCSmmtPzPLwslVizocRjMiHBDIdmr35DAP2wbbEEexMR
         I05Wc0S7lFyublmwsw2RMxBmULe//5FYJJbXjzPYPWRxMR4dyTfHsvHlYoihoPE8PUS0
         jJ6Jt3MqTUZf8M2RvJv+M2FR6VID9WS550eFkiMcEBwaQXMFQjy4qfHYAvi72AZsGgJh
         eQL7WuvhYn6QoUx9ysLDCpj5ntTMP6xbFlP6W04kPLMrGdF68TMZEm/19StH7yHCx6kw
         iZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0KASQWLZtqyUQ387Pv63OzY35I3IAB/A7rYtvKs2yjA=;
        b=ufOSEq/esPs4Eq52IijVIvnqP6/8LlBtgqPspJfRzt0CKhlN1IjM5nA2IHQNNxKkQ+
         PaGyYmMXa7olPg0GBcNbqw9WCyZ1ybEdJXG5tQflvBLf+UU8qqZk/DpPdtdBciD3iN1O
         nt6Lx0mu6938fqL92J+YqFNlRSQOdygX7bxVnBLfUoaZy/oGccWxeNBEzK9mTIROw8nb
         8KZ4ieAYkLFqdgzdbnvH5bhJJe1pZhXqK1i3lZDWymQhcfM4z7hPIAP1cFbybgkMC0We
         OLg2sR1w9GujDLRXjggY2+f3c20DcG5bkrCN90EDHQPALfKtY/YIstX16wRmgVqLUR8c
         1Ijg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXp87gRdeQzBuAsLTKNUADkysrHtsTKL2kVAoGpQXhycnHPRG64
	uvMr8Tghrko99udbwOyLUzw=
X-Google-Smtp-Source: APXvYqwd8EbFOgPysbSzWOP9iMelQwMf3VK91PDm/vqWFFIukSbr8qFqRNZWMQK5Fz7CtZg96HHTrg==
X-Received: by 2002:adf:fcca:: with SMTP id f10mr568482wrs.67.1556777003651;
        Wed, 01 May 2019 23:03:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:53cb:: with SMTP id a11ls224583wrw.0.gmail; Wed, 01 May
 2019 23:03:23 -0700 (PDT)
X-Received: by 2002:adf:e944:: with SMTP id m4mr1348427wrn.130.1556777003277;
        Wed, 01 May 2019 23:03:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777003; cv=none;
        d=google.com; s=arc-20160816;
        b=F3U13pYwDFQk7aIQyN0H35HxESY++i27U9xurnSDyu0c4pIXp3HhZ0pyVtMjif2cIH
         WU/Rv2F3ASHF5ojR8yXyTYRzz15yYjT+ZsxVxwCCv1L3U9+MyIubYHd3TgkRiS+wQHzh
         rt+xwZRk0mMFOJVGHwFTovE5tEPFLhOyOE+iSBVVfMRAwAsIkwH3LJ5QvEbWSpxylzTP
         /69/hgJqJEnmL6R438j1UZ0Q2smw2qjiVe5RZFoy8IHcrvbf/IzoGRPvOoQerNZ6dxBP
         AAzOADWuy/rl6Q8NzZL5x1eLLOaUh3OLktfDF0QIw0YaVjMGIGnZVjPJf1+z4shAH1AO
         3Rog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=sjUoLT7A4u8ZnY/zhqDbXzBybXoD3Z8rV7/ttOOFVXY=;
        b=BZL6F2cfSiFOV2YQSX6hjY7VLkIsllvQFsqNkqYkLCeUxfc+jBGGIddcCCdR35olEL
         ASzH1INCwdELbOK2hkzIRG/gmw1oZfwk8p+YyLLSkqT4lxc9ZgIWmIgjW5+1TOUghQpo
         /A1erdAB2hKBnSn8RpEy4+COSmr6rzWkIt6mIkKsuKsavh4+iIAW5YmJS6uEP1LW1xbM
         u7fahw4wA6T1tm5C0zXYpDcvayxxkmjSSQWg1HgHdQlaT8rIm7LlmvBwVs4FcWnmX040
         mmAar/BHquwhYJsYFqjCUyR33bazUny3nNv/ocBGs+il/iXzzSOAAKRoWetbzMa5V1u8
         RQdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id 61si1038902wra.0.2019.05.01.23.03.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:03:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id E4B1FAF81;
	Thu,  2 May 2019 06:03:22 +0000 (UTC)
Subject: Re: [PATCH 13/24] libfcoe: switch to SPDX tags
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-14-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <98856ed1-b1c0-97c3-7888-cf0634620e3d@suse.de>
Date: Thu, 2 May 2019 08:03:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-14-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=hare@suse.de
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

On 5/1/19 6:14 PM, Christoph Hellwig wrote:
> Use the the GPLv2 SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/fcoe/fcoe.c           | 14 +-------------
>   drivers/scsi/fcoe/fcoe.h           | 14 +-------------
>   drivers/scsi/fcoe/fcoe_ctlr.c      | 14 +-------------
>   drivers/scsi/fcoe/fcoe_sysfs.c     | 14 +-------------
>   drivers/scsi/fcoe/fcoe_transport.c | 14 +-------------
>   include/scsi/libfcoe.h             | 14 +-------------
>   6 files changed, 6 insertions(+), 78 deletions(-)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.com>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.de			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
