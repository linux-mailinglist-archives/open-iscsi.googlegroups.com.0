Return-Path: <open-iscsi+bncBD3JNNMDTMEBBDHOQ6YAMGQEUELPISA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC1988B3A1
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 23:13:35 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id d9443c01a7336-1e0984b137asf16022375ad.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711404814; cv=pass;
        d=google.com; s=arc-20160816;
        b=g15wReBS8D/N4mIKDB7iSV91Q9dKISGmgdfQFy3txxo/s+xs26CQ0ExvUOM1jRIhzu
         0p8BTCVWk+6OYqtoNqBmQ3tF2by8z6G+hEdmLhWDcOeGE9b3h8MQWJ41zlJSBUZ9Smgu
         0zhoge8m3HrOb1VosNCWqJ7z2aLQVQjs/iUgM1rwHENTBnVeXKbsUaatOSnIuiLiYR2I
         U91zpShndEMlqv6BxdOUgP1zQkS+WP9tZ+90Bd41qTSF4x6I8/48f0QOiFe/9mOITbyU
         8khLpyJSyh4TKjVwQoSCPUb1RFjv/GiIY2kOjtH2cDyRaFBW+DV6c8uzBW01y2mBT0Ij
         aWDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=R+rm0InxQ23Fv65PJuBOKLzY7ZluYAn6BPvSfkXt7iw=;
        fh=2Cf4jtZ/pzpVmGi2wypn1IV49HsEfgC1wZCrlEGdWow=;
        b=ok+/GYU1f7mq+XpOgb6w1q98fYmGh4yVxSWcS+yJl175WYrezVOG8uYOG2rSzBL6CF
         fbWqboa5wfVwZaAiclwMlNYZvJYHfgXIUOE3krWLTXyb9OKwQQ2aqW843MiDhGt1J7jX
         ngaDluunertcOKj9FSJsTRfUhYn6gMI+SW/oHPnqP/f+dwcStSY4V9QiaLNTi35D05G6
         /wleKX8s7NlBc/PtJl1Tk4Yiq0AFIw4XPADqS1IGEPGFzYLDe3TRWcghwvNMs6cEzC4E
         6H4dqeSqOfb+v69EIp/+DfeRB5Nh9jHwvBYkN1gwQYk88jN3mp6Rj94MVavqKEtalI8w
         8R2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711404814; x=1712009614; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=R+rm0InxQ23Fv65PJuBOKLzY7ZluYAn6BPvSfkXt7iw=;
        b=LfHnzVQ+wUhD1/3miuLn9abqAqswAPJedtJ9Xrvkdp5M5iyqkNNmkAqx2HFPh7ivPJ
         dnILfvVvBKuwt9H8Aca/ReFbviGcAUGqNERnOT8I6HIXBbpfq34iKwwaBrIp/Fuv0uKn
         AAnxQMLXejY49qbq2cw+P+DKAfiJslOdpKzH6z69fwp/S/qygCc5OZGDJvOYhF49MNlx
         XKas/z9xJnha/IN3iYlXlEm0aDCV5UQOWREvYQ/tqx29bRSZUOxkqgXtZNrptGCVbe0M
         6xKKhoz2Ws4AEhxhVw43w4cRM/owJ4kGrEVmYp6bnZ5/EMZsxo5PYqzqTOx2KcrLKQ7m
         +smw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711404814; x=1712009614;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R+rm0InxQ23Fv65PJuBOKLzY7ZluYAn6BPvSfkXt7iw=;
        b=oPmSnbsCkcPTzuzMJVvZj3mZgGLRokwrUhU0pMt/RdPRfHIqfvWMIyy8qDlHD6uGtr
         jnr2eSn7yGVdOJ2XuANCVqQGiaOsCzfJTqar/I8R50F4aLXwbNM1Q9I3bdo5teyacFQS
         k2ZdQRjAwWu65+IbVfALBboH8iRdxlQeKdgliyQxY8ZDlUc3FvfWyjY1+XLR3Sxyxtm2
         bv9SBrMm9t5Y4aTuCq/vWEMU3AZ+j1faztxpCx8kMjnfoedzvXOvyoQ3RA68g9STNV9T
         PoTXqXtitz9jNILHukQiTd/icnIMxaWdFTJben+3012AMDOmDmE87bqc6ig2+fByMU6A
         A8Gw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUYjHrQNrrpbxaYgQa15UNea71RCVGPcKwx1CVYnW4vEZ4IGC2fimbSeG9Ds/OSAexZxbz9KxgV1Q1UKAdBWElEj8rDFE0uKZA=
X-Gm-Message-State: AOJu0Yww6QsmPSNuuxSHzV6mr8+Rd2PPUlL4ZKPkSxQxlUgRt/bxWeJ9
	mBBTDzJc5BFk/CNI8KJaqIs9eiZJqAm/Du6gBrkOYk7OQEsQGxsi
X-Google-Smtp-Source: AGHT+IGelA310253Z9VvCmfJnO3IW/jp7YijDdZ/tTgb2PDeLN6YgKU+/y0GIv1bckDm0MR0mvV/fA==
X-Received: by 2002:a17:903:2351:b0:1e0:e2c2:5703 with SMTP id c17-20020a170903235100b001e0e2c25703mr1028937plh.0.1711404814107;
        Mon, 25 Mar 2024 15:13:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:32d0:b0:1dd:72ea:58b6 with SMTP id
 i16-20020a17090332d000b001dd72ea58b6ls1221670plr.0.-pod-prod-09-us; Mon, 25
 Mar 2024 15:13:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWrYMbbbDVAhrPoD80fVxXlVd9/Q+0dMeiytawollp+2zbtp3GCHlD3FKqrC92WvT56AmP4Ua+HAhMaSZo0Vy5k5okzYOisrPduRhQ=
X-Received: by 2002:a17:903:192:b0:1e0:bddf:7ed0 with SMTP id z18-20020a170903019200b001e0bddf7ed0mr4828969plg.27.1711404811308;
        Mon, 25 Mar 2024 15:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711404811; cv=none;
        d=google.com; s=arc-20160816;
        b=Jxv07nFd8itqI/Zz85nGDi/NOf+JBOOa0espreC1DTmWYK4tQcJNZeWxdxEMij1WyD
         iF41i2Xn5t/JWghu/XyQjEqGh2NNb5F4XUndAHFNvH7DSWR+44c5j15Mz4HnwszV1QJr
         nnf7pL2M9kOEVTKU6FI31F09+J0A/o0QWJk+lYmbxgu64uDDu83RoeZoU2AhGAF7F8ek
         NuB7nb67+90vOmM4+JOp/1ouX6Bq7YhfajelG2FxMWyZuVbKPC6Jz3LSVFOPJu2wGcnp
         BPQWg9FRdv64ZEu21d2lk8rOINeLCvUWrESPao/izFKzo8AOYMwEjwUHtouSsW6SIDgr
         rrcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=yq4DZOZpV+tgfo1VME0SGUbSt682+RvFZTbCx2WgCR4=;
        fh=bHiIESf4V3KQO82Jm+AKSlOD48+yK8bZBd/DtuRFcMA=;
        b=p824zpw7NI+fx1JuzT8XWYGpAA/3P9fyfZuQHcTp9Au8sWJxtD+zeODQ0XcaxeTpNa
         WvGEkH9SX2j+vHmlFfH7CkORhiQ0oECnQ0Wl/sZgcqy5PzfTZNSQoAnLJd/G2pwJIlIW
         91Z9sAWS+zQWCUocDq/fubtZY4QKR2M5gxGBl+vySifYD7/7/JqYQJkliD7cfb+7hS70
         u2O6Xgh5w9f8TK3g2iJBDDbBCMV+25NTBXoDJgdFdz6mSnw1/GCFvXkPWlnJ8A7c7LrW
         psIEW3ZENq3Ty6M9aX2nGM2QJfsQAwLdybNzz2jgwxb6cc4cdnv8qtrh7HWNckVTkPPV
         H/sg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com. [209.85.214.177])
        by gmr-mx.google.com with ESMTPS id y4-20020a170902e18400b001dede653af6si385727pla.1.2024.03.25.15.13.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.177 as permitted sender) client-ip=209.85.214.177;
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1e0ae065d24so15552415ad.1
        for <open-iscsi@googlegroups.com>; Mon, 25 Mar 2024 15:13:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWNIuDEMzNC68f/8rkgfPDiG/iWS6q3IWeHzJzVOYzxBrXy71GLr3lUuO60KR8bQ5fr81uGvxUmPlDgtQqLTP9ycnt01n6oNo9SoNo=
X-Received: by 2002:a17:902:784e:b0:1df:fda8:e0ea with SMTP id e14-20020a170902784e00b001dffda8e0eamr7291037pln.28.1711404810841;
        Mon, 25 Mar 2024 15:13:30 -0700 (PDT)
Received: from ?IPV6:2620:0:1000:8411:262:e41e:a4dd:81c6? ([2620:0:1000:8411:262:e41e:a4dd:81c6])
        by smtp.gmail.com with ESMTPSA id s19-20020a170902989300b001dd67c8e108sm5195084plp.199.2024.03.25.15.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:29 -0700 (PDT)
Message-ID: <bb3b5924-d266-49f5-944f-5e7ee3d3b5b7@acm.org>
Date: Mon, 25 Mar 2024 15:13:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/23] scsi: use the atomic queue limits API in
 scsi_add_lun
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-10-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-10-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.177 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=acm.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/24/24 16:54, Christoph Hellwig wrote:
> Switch scsi_add_lun to use the atomic queue limits API to update the
> max_hw_sectors for devices with quirks.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bb3b5924-d266-49f5-944f-5e7ee3d3b5b7%40acm.org.
