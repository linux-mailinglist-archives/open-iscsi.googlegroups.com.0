Return-Path: <open-iscsi+bncBDVIJONZ3YDRBP4ZW73AKGQEZZWVR7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A001E3547
	for <lists+open-iscsi@lfdr.de>; Wed, 27 May 2020 04:13:20 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id w79sf8757512vkw.12
        for <lists+open-iscsi@lfdr.de>; Tue, 26 May 2020 19:13:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590545599; cv=pass;
        d=google.com; s=arc-20160816;
        b=preck2FWkX/4IHKVU7mYEM6CyzM+M+UY51Bn7/9y5NMv3YFAwxcqyxGblaiMdB4Iyc
         ilGrWkyr3qSN5ED/YpBgcgfmfIaBUJzlfEiKUc8pCiEi1XG3KtMGbc0+uzykkoLHdfAj
         XIwyDVsOFpq6dwbq6l+1bKHhTFz7Tkd/NsIl1t1iUSh4r7FCzRNQeD3mT7gz7fCt9u+u
         R2AAa8TqNrrCyVWB6+Bunh7WaCvMxAiZk8F5e0r6WNcYXIobB4CcWre+aHNeE27UDGah
         qm5aPCsHeVRaQJjwqOg1Ik524HSDfneNtHG3xh17Qql4bqFnynwcsVUchIJY9kDFf+xi
         4ocw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=TnzteQLo16VSVikx3wHuR9gplZr+ornurIAv9JmgUzU=;
        b=uG5AVPIiNkK1Dn7raRVYXnqORdsT4ZIs0dpaCX1AMWU7yoHqPnQLW60xfTjs2hgw66
         YiBY9xb4FNhg2cbG/u0js4lD3nCrzbF9qvZydNp+FBmqfrDjBnniyeZVsjidJnTUj4yu
         OHBJ8GEREjqRbPMhg1ZRF4ABpcijwoJi+cVjo4bvabGB1mYwq/hRkh4MmTxdZ+FFWVhJ
         bDv9T9qzdI+7S53Lk6WZA2xjGTNw5vkel7JP8xLfFx2nM0V0YphaST+Q+XKhDVsgqATz
         wv5aiZyCYlk1mM+C1U27ww+i6e/58HiPMyfE9thhmdq4Gq6jyv+k2KDrPGT7wqCwShAj
         6PxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="KDR0Kg/K";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TnzteQLo16VSVikx3wHuR9gplZr+ornurIAv9JmgUzU=;
        b=Kds15vUC1L1OpRVB2ueFQL6OWa2iYkSaLHEpmB+MjUXjgVGtk85Opc8OwW6tPyHWAo
         RfAPyoxRnFfVMKE0ieorz1Wdyv+J+P36TFYZdArMGHSAnnb9patLNvzET7x2WyyriJws
         k1QYRIEB/qeQ2BDjZnOpvcjQAjTPZmjMIaniRlW1hVEo5JnLpj7TdjQ/+OBzErMvVfA6
         RNOET5KamEMAOZXz0QqF75CB1lfT0Pg6nNw5xu9L0RFHGdesAaUpQ0gM8U5btZ9PCDsM
         o+MOFAbP3Uvq/2Yd9ZSSf0xsiAdOwlFAbv78FRPDAOSypAdFI7Uie/pZpIfWrxr0Z2Dg
         QQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TnzteQLo16VSVikx3wHuR9gplZr+ornurIAv9JmgUzU=;
        b=s80goadBDvNqjgPGwdKfKoMZ19CcveUeDQLFpxkgPmRRCehkd/p/6M8Fr5kbsUvtGD
         czgt5NRv/RypjMh7IaFfjYEzIM9s9NPqFNBSoBJhHRIv6swNe+ixvSEfNoBdJOcVL2bS
         MChgDsfnXCXf17K5MQluXucV6QJlwBJabdrmHWEWDqw1+0243sOQ9vLxbNU9OXjInThv
         TYk1g/dhVvO1rk2c9zl2+mMw8MFGkpTjEfRKxrsI/MBBb1iBP97RZXQ2glPZcMOqZyAy
         Tp7usjiWrdF0RiTC4rvSdSB8sMy9M7s4zI3/+WrtSjJNzgFaYdO6uWuRrB9EOwBvDqcF
         zpDw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533HZamFy7yH+AMUlBUxq7t8mISvmSnodh+QWR+qTkMNELwsOGyP
	clQhvtBPxLd3VM56YwkiRsE=
X-Google-Smtp-Source: ABdhPJzQLtb8HOp7qNjlG2TYuOy3dBDGDvSLNutmqh+yy8VmGyoE9lEvDgp4tzMoT6JzvXuKzTHHyw==
X-Received: by 2002:a05:6102:21ce:: with SMTP id r14mr3054478vsg.149.1590545599219;
        Tue, 26 May 2020 19:13:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:65cc:: with SMTP id n12ls865687uaq.0.gmail; Tue, 26 May
 2020 19:13:18 -0700 (PDT)
X-Received: by 2002:ab0:36d9:: with SMTP id v25mr3023682uau.126.1590545598865;
        Tue, 26 May 2020 19:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590545598; cv=none;
        d=google.com; s=arc-20160816;
        b=wzwcZwSXQkYc5AaTFrQENto2zD4k0TH1o42qUcdDeTZ6kdt099bbdU2KQiFQYEZlH7
         lvn8EPwF/LepQiLGjE619bAFPoCyZoqBz5eCBTa/rNBdEeZ7ROz8n3RnaNJ6NPerafR3
         DAsMxpwA+o9TSFdBfRE4qy9u5kEUrMRt4jFzPjt+oEUmX8rbDEfuyVYipPd9jCkRR7rK
         xLVFvvkNLoSLg+CJvrOdlTtSSO8KrcUsvfnr6U3JL//Nf2FS7lGNXrGUryj8v1oCL4xt
         MOb6d0v5xXUf8yDp6RLVhb1cqnl7JxEbwBKCYwfce6ZVkCmgETkzNs3Qtqio8+SdghLx
         +8Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HTXrVGcSEAZfLtvFJ32MgdXboXlq1++co83zpqQMo4M=;
        b=z9FihNL94qjaJja7kY/YPBT7NL6Dmy7zk6ZHONt19FFJOoKd0fQLuKuJTl3R/VCvVb
         /XOiyGMlMcSpMsiPWeIUX+Vi6xh3OacNgUdG06KU3LcErdPZCX0n9Uf7hBt1RTNNVB4Z
         9MWVKuSwosjAPFtqjqmspRfCUAZvzAcWJZi1vFbtRDLZ/MUgQOpSx6KhwfDFF0o6q0v9
         2FOkigtvn+9yFaZ0orBzPDylhlIhzFHPGcY3Ml2O2G3D16I5MngQj1roHyhI381ExP9M
         MpS3TsmRxmKCUqf8MwyBNR/bbUqhiHJFUnfVCdf9hXaeARo4+xs8XApXYK9xwr4SW/z9
         wCog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="KDR0Kg/K";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id a126si108646vsd.2.2020.05.26.19.13.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 19:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R2BbDG092037;
	Wed, 27 May 2020 02:13:14 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 316u8qvxha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 May 2020 02:13:14 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R27ZrJ190198;
	Wed, 27 May 2020 02:13:14 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 317dktheg3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 May 2020 02:13:13 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04R2DCQp017242;
	Wed, 27 May 2020 02:13:12 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 26 May 2020 19:13:12 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        Khazhismel Kumykov <khazhy@google.com>, cleech@redhat.com,
        lduncan@suse.com, kernel@collabora.com
Subject: Re: [PATCH v2] iscsi: Fix deadlock on recovery path during GFP_IO reclaim
Date: Tue, 26 May 2020 22:12:58 -0400
Message-Id: <159054550935.12032.12429490681572583579.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520022959.1912856-1-krisman@collabora.com>
References: <20200520022959.1912856-1-krisman@collabora.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0 bulkscore=0
 spamscore=0 suspectscore=0 mlxscore=0 adultscore=0 mlxlogscore=982
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270012
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=0
 phishscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005270013
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="KDR0Kg/K";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 19 May 2020 22:29:59 -0400, Gabriel Krisman Bertazi wrote:

> iscsi suffers from a deadlock in case a management command submitted via
> the netlink socket sleeps on an allocation while holding the
> rx_queue_mutex, if that allocation causes a memory reclaim that
> writebacks to a failed iscsi device.  Then, the recovery procedure can
> never make progress to recover the failed disk or abort outstanding IO
> operations to complete the reclaim (since rx_queue_mutex is locked),
> thus locking the system.
> 
> [...]

Applied to 5.8/scsi-queue, thanks!

[1/1] scsi: iscsi: Fix deadlock on recovery path during GFP_IO reclaim
      https://git.kernel.org/mkp/scsi/c/7e7cd796f277

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/159054550935.12032.12429490681572583579.b4-ty%40oracle.com.
