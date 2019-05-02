Return-Path: <open-iscsi+bncBCHZVHVFVMARB3MOVLTAKGQEGJ6ANIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D54B4112D9
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:00:13 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id q3sf885355wmc.0
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:00:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776813; cv=pass;
        d=google.com; s=arc-20160816;
        b=0pHlO9Utb5KtfTeqVgqNq1qQdk6Ni9cl9i8lFsVfE5dYSioEwLqNM1qMqlnkknK3Sp
         1yb33agKwcMGCuojZayRiHGECwFMPx4r+JNtJuoBFjcp2c4n/4KLl3t7HR2GaDoZNAjx
         h3T+Ri7xdAMNQ09E2c9oDnw0BIhv+jAHBaCBm7qyOU0YJ6SKYKUwsRFhXhoFuVrx6J9y
         q9ckYgxEjYxasQAyXQB9g7kRgtxilEfHuiUmG6rDwrp7CLEZCS4+Cv46+t1fdxF5MZfg
         1afmcVeaL2RrxbKBTfBdsB9PIHF9wCmGSo2UFt2roQQAvz0a+6RAr3PBnp6pRSAvbfsN
         cyKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=9y9UAMltvhKb3iqMMU+48O49qYnaNb0zjzd+fHlQFN4=;
        b=iJF6WHQD0mbQCh5uBYVsDzVofoLhT9MsH9cPbLWrFjiFlXAEJHwjPeoyCCkpFF5tO0
         1O58plgkgM/aTAds2Br6sQJOw1b7MuAry6gCpmGi/+fyb49DLkFwgxj9cHPxlcD6pN66
         5R2cubV59VgGAxEXEEdcv5lKYKEfBQre0Vhpm9PZMI2mJL1LVAJZPhnBYktlOzfhSuG4
         a8yoRqC9dMUw+Q8+JI/m0GRfemHunsTw7uekrg/VvIe4ExiFmfN14v3niYdNDQiNs+Mu
         uIltJZQ0S7sxAe/GnHtEcJ2736vWIxhYq/no4OwpJR/JK4zRzcwvzimwqQllEJRWpyzK
         NXwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9y9UAMltvhKb3iqMMU+48O49qYnaNb0zjzd+fHlQFN4=;
        b=b4oSddVrDpk1K9UMg5ZAWq7z0utB9N+XeyJMfzpl4WNPjgE12vpIcqkEhxnofoez/2
         yC79R3bc7qLOsLR09j95GKXeWb8//+yFr94TXsA7Y0QU/GnMJ2KgSz452/wBUBrV4qy7
         ytE3HXhWhrifSaKJscP8Hqokzl34OWeLRWT4PqbW6uAneJpuUYB6Q/QifqrRIU9lIiY6
         WsqvuMD533DvvSmAC+NnS0H0b6lpmbYuDIR79arcnyawjg2bwhcZf1PRmkx5rlxfJoGH
         dUi6SrwlJhcL6jK5kGv1ClnLdbBmQyL6MS7WL+Lir0bcleMU/ECkHERQGhTmeswNVtGe
         g8qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9y9UAMltvhKb3iqMMU+48O49qYnaNb0zjzd+fHlQFN4=;
        b=ciSwI8fgPomdwXK2EGm8zqdOL156vvqfAw+1F6A/V4GwluYqG5q6Ef/+RbduJ0ycKA
         S/i1xXLi2QbVqh+QLSiNABrdfzDcV3mUyKpOY78wBWfqfWsL3VG+4qD6aRDhov7+m5w2
         9lri9qxW4nwKr3v77Gtj/7tu+Z4byomIGFxpJZGiFzLD3rJO4Kt0qbLZM00bUtnoRRov
         z0WXQMLCou/c6m2NuUJtzNyrY/QCeFY3VkWyYw8qv6UIptqR3lNeKiTfjiakvFnsn1Jr
         7e3zRPB0dW0ib6k4I8DR+EiMev9gq4m029CNPxtdapQfJcwSF8hcqKPm5I2D0qNF9/Cb
         rLKQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVAJ0yhAG/Lxk2Crh4F5u4dHjmjrUfWBCVcN6MoMe+lfbOcVB+O
	bgLVHAvVpj0VIlvdjHzOuRc=
X-Google-Smtp-Source: APXvYqyTxlB+7s3o7grZNt3vHyES2/oIZHgjatCfu8xp1Cc4g8O1KpQB0JcREIaIrcQD4ItHM9VUNA==
X-Received: by 2002:adf:fd06:: with SMTP id e6mr1175724wrr.94.1556776813597;
        Wed, 01 May 2019 23:00:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:6a8a:: with SMTP id s10ls216411wru.12.gmail; Wed, 01 May
 2019 23:00:13 -0700 (PDT)
X-Received: by 2002:adf:9301:: with SMTP id 1mr1224452wro.231.1556776813202;
        Wed, 01 May 2019 23:00:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776813; cv=none;
        d=google.com; s=arc-20160816;
        b=BmdfkPI1+rghPvOM/h6dfKufWTnHSNltCgkZDL13enEn1yc17s6CSGY++x1yADjy9Z
         txOAQtAL2HAsmivNIJNhXoLQ7v5mJJWjjW2yT3dEqCzdN1ZShoqyIB1cey7JPiRk++Ux
         QaI4pyEthWdE8xdaY3EVMxI+ssM0fgwpmQqPRd/2jLJyNPJWqWmoUcnoDvAG6+LAOmCX
         17Pekh79YtHLzUq4CaJIq0pMuZ2EJymyipqWyRyoPXdY707e887ZEyPq6fpTGsQ3vxun
         +9rqAM6VxmV+p9dxI0ewu6At/YrQg531szKFo5N/j81I2tOO8v+SxTEus5AQayCB+Amp
         s2VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=KcoSAnLs0zu3smec8gYe3JfLKz5oCu0oaF4Sa+zupSE=;
        b=WyBM7ohiVmOkcaTtViSWAvzd5Wd33RXRnbXmZBFJSrMaAFldnueTAL1jECh3S9kMqs
         4BVDtmowZogaorUfYBWW9BvEtpD7PG8ABrXIrWfueoc2sHhd4ISM3VRGL+DYtaEyzAIE
         4G9KwFTOH5/d3CVJhJ8gzw51g3NB2/O4pj+hhrTiD7IOZtnEQluUbGH8Qcejaxsm7rgW
         mPREkwWbg0WdIo4LcjnAIE/nG4GNXOaasUozaJH6eCfsseS6qRnkzxGJFb/OhFQp/m/p
         VVJdsnNJH9lGgOqd47O0N6nVFYxr7bUE4vODesYUOXyMtWt5j7Y/jCJZCKRPsariBGUs
         ZAtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f1si341925wme.1.2019.05.01.23.00.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:00:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id D0AD8AEDB;
	Thu,  2 May 2019 06:00:12 +0000 (UTC)
Subject: Re: [PATCH 05/24] scsi_transport_fc: remove duplicate GPL boilerplate
 text
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
 <20190501161417.32592-6-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <0d16d8ef-7236-6d42-769e-b8a53605e198@suse.de>
Date: Thu, 2 May 2019 08:00:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-6-hch@lst.de>
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
> The FC transport class uapi headers already have proper SPDX tags,
> remove the duplicate boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/uapi/scsi/scsi_bsg_fc.h     | 15 ---------------
>   include/uapi/scsi/scsi_netlink_fc.h | 15 ---------------
>   2 files changed, 30 deletions(-)
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
