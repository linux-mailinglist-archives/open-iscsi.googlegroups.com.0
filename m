Return-Path: <open-iscsi+bncBCHZVHVFVMARBVUOVLTAKGQE6VZ2GSA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D48112D6
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 07:59:51 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id w9sf865775wmc.5
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 22:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776791; cv=pass;
        d=google.com; s=arc-20160816;
        b=pclPTXE26pon6WmSUIQW1FaZqs+XpvrSgKirpgZxSFK06znQl4XDmoazc0TfBhZn/F
         NXBY08m5qp5XOQyTzLaRvomXfZrKOQHF9shUvErjuUOq7lRMqNx4fnvCN1yX2LcUKTq+
         mOb8LE0rQ7Q/kGZ0s/lGHkkKZoQeUaqBysfOEPjuR0cKpKvzC3xOzP3tVhBJJbS2rChs
         G5pmLlFjK6uJJxk7GlemMx88H1rZLjKugyE6pvRiwPkz5AZZOvo9zolQ7E360tYmw/US
         wKTki7yElOwtmghdj+PUhc3dHq8YdI/sPvsclXDB5GYaWC4t7e01maMZ3H57tr7wirwm
         72OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=heHlFhV46+HTLT5dn9p+GjWv+w7ynf0j7ie4G0EQxPE=;
        b=EKvPvtYGFLbklMsrwj+afyA8N2WM84iSG1qSNvOv3s0zSr9UiDgWqxhCFqWNAg/M5R
         d0n76+xEozFhq/4umjM+BKWMaekWyfjqRgis3SKj7ZiDkEmFAdQgt1cNlLirIiwV+RRy
         84Dc1Zd581jntzB1n9JF8M4lLE7NELjOgG4ICdXOOHQ7c8GzgTQ1W4rMNsIBFm4JNDTA
         Wl3ZczuCbjKKXTaRAeiov/erFsnSVqU4nsOJbk4sQeeIkSbyDuvnxWC3Cok48SFEY8fn
         eRX4b7dFEdVstRdSGSv3yvAgC4aaRKRbjuraohswf27U1RpwYBl2xA2WOC94d40glMDb
         qD9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heHlFhV46+HTLT5dn9p+GjWv+w7ynf0j7ie4G0EQxPE=;
        b=NDpXOjUiabRbOa9qQrvpph2JzGddHJXvNRv9fxZOsRHtXRwaiJvXSR3hRIxUpc2itB
         w/FncsoQEoV+6m873jEMmt35ktvqvn5NbvxCbjtKLcbDeCxoNwngsDu34WaoOsHVNl0Y
         Yl5Jt7y5Du472QSkp4Kbc5YJ7jAGQH/UyNt0tumdYToVbEpC1ZZ6IA6QkdF6OHvLqvKe
         SGopisO+ZdE02Eah2JXziHIyEBOA1ZLjfCCjpv9djT5L2OrnfWZx9zAOWlUFIbTEO8+t
         yBy4AUuzaPoI3wKIzkqRHkpKAsmCh0Rg6U6cbKKdr476qd9dv+Zs/TQTsEJT81Z82fQ7
         yL3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heHlFhV46+HTLT5dn9p+GjWv+w7ynf0j7ie4G0EQxPE=;
        b=sCurcnfuDTs1g6exiFjbQtaqLWD4KHLwcmk/zNpOulR+SsIp4L/BYyjuodRM1Oi+ZG
         /V1O+0J4WGiiJa6XnpnIhgEyN+vgNenMRZyz/85QTFFt59RoBHak/K8fEdGCTb7rbVjR
         5fTr3IcCl+v0i7USv1is+4HYIwhkExuadE9XmzhySTdWt0GgAJGKU8xT8rgydXCWgvd2
         ClmZ8V8nYnV2CynnaPwOX/h3Mhry2bju0NpXavesx2qfmO7RIuusXNfdTzwfaJws5T3k
         57GpEV+dTzhJ2x0NA2EmA+XkFeawYZpeZUADUdYQGF+ozktEG+UP4HeAum1o4KqAmMfl
         zF8A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVPRJcVqNuWooJcR6vP8dYPoD1qTYnxK82j3JZU331M8a6t288+
	enBvPbRjYGvc0TZun/NMhtA=
X-Google-Smtp-Source: APXvYqxFwax2AorLLY38EojAcfZxPwKmoTo/NAnw1255RMOCn1T3xqMtVcmeUEG/hAYBw/PnxR/bLA==
X-Received: by 2002:a05:6000:1201:: with SMTP id e1mr1291209wrx.49.1556776791171;
        Wed, 01 May 2019 22:59:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:f306:: with SMTP id i6ls219413wro.3.gmail; Wed, 01 May
 2019 22:59:50 -0700 (PDT)
X-Received: by 2002:a5d:544b:: with SMTP id w11mr1291195wrv.110.1556776790614;
        Wed, 01 May 2019 22:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776790; cv=none;
        d=google.com; s=arc-20160816;
        b=Tam6YOcIMy5/GNMSllQdU6FuC0mYXrKL/rt+OnGx68Df82L1J2mmDDxAvcBZiLM2Rt
         WWZEIXFt0wzGAt9D6np+bfSzAxYhkmgVTeHEt1eeHxV/u9mRlV+otveAldR/DiNhCt4I
         OeIF7MNSSIjae4mG3+Vq/JHm9JWyRzb3xa676TJoFunfNe5h6QIYGeaDpBn2VjoCAIfZ
         8VDNH5YTTUQtd3WQ4qpHRrYW/5HN2laWulBPSUtzLoCtVj2kdMNhnUjyhmZlfE+xpAaZ
         p1XIdFYjIiRbGRQkykSr+Ip0Tvsq23DAztNjsJH9X5NCwtvrCkISAqlOKSpQNhqs45N2
         hFwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=qnWm5oWZiIOEWc3kvUoCbXaotlFDdX7NGX0QK7eviAQ=;
        b=f6uTu0siUZDCRfhYJX1kGBYfeEnsWYjZ+XPV5Ps0subQ61uvXA9UNxdR/71mMvy+2y
         c21lfEe6zwuAA4SouCw5PmKnjImCBY9WhnFxh1+8fQtvHfvnFUbDRm/WdQYRrx24qELQ
         1m9NU6PlIri4dC8qwUxO0h7itx5Gwp4zqS3hgOgXN/B33GVXICv/jdE61LyORyrcrBic
         8HaQCi68WyWRpHjWM0lvjyJYlEGQMd2KnMt4w05OgymdnP8mnXOuSP+XxwyupoLaD87U
         SvxXMvGUO1Oc5Rcci6DGgsCVCWKE3nOmQSjGKyP1vzW2/+PfZqXZdF8QqHLOUG5nQ1cc
         UJUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id n21si327912wmh.4.2019.05.01.22.59.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 22:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 439FAABE1;
	Thu,  2 May 2019 05:59:50 +0000 (UTC)
Subject: Re: [PATCH 04/24] scsi_transport.h: switch to SPDX tags
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
 <20190501161417.32592-5-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <90aa5954-1f69-5fd1-1884-a781ff23fcc6@suse.de>
Date: Thu, 2 May 2019 07:59:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-5-hch@lst.de>
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

On 5/1/19 6:13 PM, Christoph Hellwig wrote:
> Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/scsi/scsi_transport.h | 15 +--------------
>   1 file changed, 1 insertion(+), 14 deletions(-)
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
