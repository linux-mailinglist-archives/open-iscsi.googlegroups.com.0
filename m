Return-Path: <open-iscsi+bncBDVIJONZ3YDRBFFJ2WIQMGQE55OTOTA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 856E84DE5AC
	for <lists+open-iscsi@lfdr.de>; Sat, 19 Mar 2022 04:57:10 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id z9-20020ab02249000000b00352e93562b3sf3618748uan.15
        for <lists+open-iscsi@lfdr.de>; Fri, 18 Mar 2022 20:57:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647662229; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZpZBhVL7LGtcQF5A/b7zZwaJA0KA+Mm/1LLW/eppVfaSroXvOHTXSPXGEqspIRcEw
         mpBo1js6ZMGxhM929vUpAgQThoj6suW/zYK0tHKEVfG3dciEVrHVZMgOGMaXXzox+pjX
         j9ubBeTNisaVMwLbYLdHPh+4pgqa3R37XQwpg9z078he3wl651oggCnL/TU5Usd6zvUp
         Zp0LxyNXmRZ4EujOFifBrNBMKsDmNpZjWF2oemO24nlKyoqFbBLLaKxicOVUPbeYQL3O
         qT6kEhonw+f9ScbSNYBhi9Q6YE7IzfsrhV/TcCMbYT3z0Z1xxWyv5oCD7fKJBKpdi6Ao
         /aXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=d4NgYdsW4GeETjA/GBpGXU9CdwvM7QzmYx8pjqDE9Es=;
        b=YJPRDo+nNwi3+u0FMvobCArr1tUo3zz0GJPiszQyIi+zz80xr5CVVteWddMbsbR8x5
         NBELB+T87d0OFh3h3KSW+UEr5umr5enDbjbsp+w24yvh5/Ez2fQY8M9ysy7BKC64aLdV
         eNivtrL0zsY7sOWi8a9wWiUlR/Z57kRtnUpPxk2Fn2s1yZ0zLkMJJWfAdlgiMezFWcF5
         NKjhXCphGeCEziqfEMsUZhKRZkgEnOeT/LnZFxe7rrllu82jX1WHIusukfsQizNXonF3
         aC/ADmig56KaRin9TJTmlNX4gPrur02HZ8VfMrEW+3yqMncmlWfB5XwHv2ECjyE33oLZ
         7g1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=qpO+z8cZ;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d4NgYdsW4GeETjA/GBpGXU9CdwvM7QzmYx8pjqDE9Es=;
        b=WPNA72k5x5HKILikXNt5GLwhcWEpmLmSzp3zirsEMI2aAyrF+Da3fJtk5XD3EAuAkJ
         WJwI/S/6GxdEzFrKd9YlipB3gCfq3OB43tNIxHGKuOxb5PXqcDDCBVBMpSdSSnySWy0g
         MQH1SRXFpefr439ErvIbAkPpx0RCuYuZCbs5OU0aTQZ8nRaxeLAZefe/Ts3P4hwZNnwy
         ShsV9RpcrUDIfoF7gUrt2GMCBJm7ZaYH5oG+UHPLCTDcd/CYKQx+6LCQ8WTfkQHQHxzt
         rj3Yz6KHpaDCeVnJlx593Bb/PV6M5PgcsOLRPbZYCbLCVELNQHmyw3eh/MT2U37jux93
         g5wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d4NgYdsW4GeETjA/GBpGXU9CdwvM7QzmYx8pjqDE9Es=;
        b=3a3ORYSg30AZUYtaF2YkV/ALXTBKRqPAchQnUxCl83/+MmucqHDD+fowbINks9itI6
         y+OziTe2mdk1QucejKkmmWXR6XR+fwsmnw2UAcj4eWgkAG7EJmbJBzZmrxgvfWw0QztW
         f0nZOR1LRUtaxlZ3Z6au8zwNw2gl561DhDdIJDm3dvF63tkq377uWy50bpJ3Zx7ra8Kl
         rwfI/E5FQnXRlkGxq5/7ZEFPpPwEGEMTbIu9k23jByL6a3dazJXBdWS8mANuRxZJOayM
         VGgMijJmXPPSNvnS9KZzL384LHTpXlOPpZM2WnVZmaTyW5363U7JtVStsRGwucNdykBW
         /oaQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533DgZ4n0g4wUVaUpFiNpyu2bG+Kvdg0YTsjLJjrKWZnQnBrHx2W
	0yGDtnUfFa2R6fvn/X2/l6o=
X-Google-Smtp-Source: ABdhPJzN44kCjnmHe/TdKs9oFpOAdVQZarEp5iORMQhRh8oOTyBWL7UUf+x64bqrd0lycxckvs9Vug==
X-Received: by 2002:a1f:9d97:0:b0:331:9fc6:9f9d with SMTP id g145-20020a1f9d97000000b003319fc69f9dmr5263151vke.22.1647662229437;
        Fri, 18 Mar 2022 20:57:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:a84e:0:b0:33e:2d92:e0e0 with SMTP id r75-20020a1fa84e000000b0033e2d92e0e0ls1087087vke.9.gmail;
 Fri, 18 Mar 2022 20:57:07 -0700 (PDT)
X-Received: by 2002:a05:6122:6af:b0:337:bbfe:b8b8 with SMTP id r15-20020a05612206af00b00337bbfeb8b8mr4823367vkq.31.1647662227763;
        Fri, 18 Mar 2022 20:57:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647662227; cv=none;
        d=google.com; s=arc-20160816;
        b=qSS7NNms5+VOU6YFDElQWl69KlmdyhhDcLbOVy1fStLMGmhpf6jIYPoDLqyitm1gwp
         ade0OMhFer5JZllWIXV3z2vYdrX5+PKK9yDvd+BTSrBtkgroyo6b31fF+FrPs7F+/kkh
         zLnoutuN27S/ibPV5EN4YFJ25WUn+Psok+b3xsS81j8KBFjRHCpytiZcfJJ47SvOANzS
         XxtbrG9sl1XNrQve1g/hq6NrQmkn9ve+YdORziE0irlJgJfZtv0peAPP1U7eznBsPbX1
         +2az/03FUTxQwr+Wl8BVHbdNrt0W15kkb98NlzBVGl5t0Bk+TU/LZn6vKX/lXlxzT5z/
         nHHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2LSpElg9eqep1ve6R13MKajEKCL9ymkAaD7aT2pb0OY=;
        b=l4YeGHglEViDuFXOJgougtcU0wWEVGp1u8Io6x6rx1nMix+CruarcVghULfi786L0X
         4zxvodp2A5UM1QZxdFPB3jxqx7E/uzQpIOjH5G2NCL/QwiEkCp5B5r0wTsv5Xo0fkmze
         X+TSRLHvI7fxeVJuBD4pyRqBTHDZ34IfFTU2RU3h7dugHqesada6oCCdFpTaY+bV7rVd
         bXzz63WpGN2KTzFnCsecwnineG1qj5q2Ov8kQyIucl8562/5pmUO4P9Q74uP05FsAT0D
         977IrQq9OPGxBRc4QL2dNMvlQK0yGxYsXbKv3SyNQFtFbDa72kYyPjDE3DNth8LH7mGk
         lGVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=qpO+z8cZ;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id g16-20020ab028d0000000b00343413d4336si431490uaq.0.2022.03.18.20.57.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2022 20:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22J3BgIT000642;
	Sat, 19 Mar 2022 03:57:06 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ew72a80yu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Mar 2022 03:57:06 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 22J3v5Rw007140;
	Sat, 19 Mar 2022 03:57:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3ew5kyshmv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Mar 2022 03:57:05 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 22J3v5Qc007126;
	Sat, 19 Mar 2022 03:57:05 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3ew5kyshmn-1;
	Sat, 19 Mar 2022 03:57:05 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: open-iscsi@googlegroups.com, linux-kernel@vger.kernel.org,
        Wenchao Hao <haowenchao@huawei.com>, linux-scsi@vger.kernel.org,
        Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        Mike Christie <michael.christie@oracle.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH v3 0/3] scsi:iscsi: handle iscsi_cls_conn device with sysfs correctly
Date: Fri, 18 Mar 2022 23:56:51 -0400
Message-Id: <164766213031.31329.2067042035707430877.b4-ty@oracle.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220310015759.3296841-1-haowenchao@huawei.com>
References: <20220310015759.3296841-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: jR7Z0HAp5jikhT8qzqGlTQTXinLUS8Jf
X-Proofpoint-ORIG-GUID: jR7Z0HAp5jikhT8qzqGlTQTXinLUS8Jf
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=qpO+z8cZ;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Wed, 9 Mar 2022 20:57:56 -0500, Wenchao Hao wrote:

> We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
> the root reason is we did sysfs addition wrong.
> 
> The origin implement do device setup in iscsi_create_conn() which
> bind the alloc/init and add in one function; do device teardown in
> iscsi_destroy_conn() which bind remove and free in one function.
> 
> [...]

Applied to 5.18/scsi-queue, thanks!

[1/3] scsi: iscsi: Add helper functions to manage iscsi_cls_conn
      https://git.kernel.org/mkp/scsi/c/ad515cada7da
[2/3] scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
      https://git.kernel.org/mkp/scsi/c/7dae459f5e56
[3/3] scsi:libiscsi: teradown iscsi_cls_conn gracefully
      https://git.kernel.org/mkp/scsi/c/8709c323091b

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/164766213031.31329.2067042035707430877.b4-ty%40oracle.com.
