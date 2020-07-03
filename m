Return-Path: <open-iscsi+bncBDVIJONZ3YDRB3647L3QKGQEZP3Z7WY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D452321328C
	for <lists+open-iscsi@lfdr.de>; Fri,  3 Jul 2020 06:05:04 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id e19sf5615378oob.8
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jul 2020 21:05:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593749103; cv=pass;
        d=google.com; s=arc-20160816;
        b=0HiIhvbcibm1KNe6hljmnXOrncbq9SFwinLDr54UzZQCEgujnxWwP+e2nJBu3Plij5
         zI/73Oj56axs7GBRXPUN3XlXQ4tQI3YmneQRNaWJHfgS3xndumwiYHP+WRm4ORosfXOa
         6UNb/mE9UbsSj2LUbclYaPQ26HiJOYKOaDy6TvI3clo1FzRsd/J+NegJWUyIPwDiS0YM
         g8NDdxkelIY9W2TqtuedIAgh12eR48QCFTRr/KyixVY6/3BsGvwVHyNZD5cnmLpLeoFB
         NS3hjYTm+2kxzmuhe9nWqJSPROJpPL9UJSa9SyKZndTQiZPEZhaYWUeVQQbwyE94Hzyh
         i5nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=tikyL7crhzUQ3r0ZP253nIz2r08Greya8rAAVFp10yk=;
        b=S9Dv1O0+Xv10Vi/ntQqKnyMt3043YvyAuxJzzjvKwfA3BR0uevBuD7JiJ+4eUkbHj8
         Fmty8TqiWkPcOjUCTHV3GZ1NSd5oSE9wD1EwjJy0crS7XkId5IdiaZsr1Qy13t6FBl2Y
         Ke2N/2hLOWFzwVSzdKj0rr/7qSflUofdgnKAdivzIr5BiwNV7znElM5hi0p0irMF0Wup
         UgTiIhbUGrED2UjTZnp7v3eT8OUtX72rs3JNslc0UOziQ3jON7EvbQFkUvne6tFT3BjW
         +V7SGc+ZXXATsk61OjICTEibp6W1kG3G2Fx17Go8SotSx6vLG1ktUkjOyZS5KgLYXoyn
         62iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="vxfM/NdZ";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tikyL7crhzUQ3r0ZP253nIz2r08Greya8rAAVFp10yk=;
        b=MVbsqj4R4YNEIo3V5lXy8aDr9ldmX7/OQjkHlN9AShQtqRu16QcMMpSX1CO4JydOMr
         Ibp11StGdYKYYLbTAAtuggheX/K6Ryo/I6UyG0gSrXn80kTyV6FGEz+hn8A245fnym+y
         WISgFA2CQDWaSxh/M4pFaG/sy00rJnsKcwIkW4i3UGIZ7RjfGrzKY1kXddwIICB1Di08
         bi7Kyl8Mq/3R1ujk8Ku+cmx40S9J1sGngbxzYLXyDSMYltkc6ishQqbjsCYdAAEUDfi/
         DlMcI3ldZkkXJFqiDGG9tGVRunVspbDH95DLQN8pHqbvOE956efutQeuQ6zzwuescB+o
         dpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tikyL7crhzUQ3r0ZP253nIz2r08Greya8rAAVFp10yk=;
        b=Ohe5wI4mrEizQvurOEtUZLLTMogFspW57ruT9dSwImycP2zdR2dpJEHLEBOrluWvTI
         JK0MiM94DBcOCoKI5aQcE52BR7yAy8xQedex7lk69WnBrYksdj8Flm/xN6NV6Gthoun7
         1kv80Dz9ZXpTSyzeCGge5DNa6SBkjm5gLS+iXPy8RNHNEUCwOkGDiOwGyox800n7oPgY
         OrbsEeqCVP9HSe4A8KeIMaF2NofG27xbXFzxQvUE6degqDebGzs+o7F9vPOjxCbH/z/V
         eJjcTDL28xHT6r0AZUAQSyLNZi7BEhQ2I7jNWHQ9nOtpPMARO10EFRq7fIhCsHrB2a0W
         APlg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530TZCdPeCkaFFtixx1p15eE9moIJcIC1T3UOBIpj5kwwl1DUwUr
	258bA0wwSqYF6IZlRbOZ3Qs=
X-Google-Smtp-Source: ABdhPJxVusNT3Bl3Bc999DQDnl04wdkznk8sg5JdZ/OtspKegcJg+j9CsDjRJJaNrZdDTnSpR9jV8Q==
X-Received: by 2002:a05:6808:112:: with SMTP id b18mr15008949oie.140.1593749103843;
        Thu, 02 Jul 2020 21:05:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:20c2:: with SMTP id x60ls1781061ota.7.gmail; Thu, 02 Jul
 2020 21:05:03 -0700 (PDT)
X-Received: by 2002:a05:6830:4008:: with SMTP id h8mr30324738ots.158.1593749103487;
        Thu, 02 Jul 2020 21:05:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593749103; cv=none;
        d=google.com; s=arc-20160816;
        b=NjebVtfqXJ5hmcrsYa7owbPX6WYkNEJP+RjrsizKkrs6aU5gTZn3rjGSYRNAr/KMyB
         EqtzP/w9RtoCOmS8F+4NhFmttRP9dOU6myl5VbLKYZQFua9wqtjUALjRD49/BtqNS8zT
         BDivJmQObD0x8u4tCfrrV9cv+fge1Dm9TNb7248GyyW4C7GBrgEzOrO5ao9aopTlC4rG
         Gt9iZcpvh64glH3uswcKpgwLZdMaVXreBOUPp/WMo32YKDPv221OE3HLFcpVtbbHYx9O
         PakmCFeW6uTQWiIXP1uxc5owqB/2h1ywvv1AxZHeNJxxkK/132z6oubwhhzppByHuPj8
         a1pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WXC2XKuef+UGQ4utKiWeWQ7HRrRs6+/KMWdOoX23qxU=;
        b=gC5OY4U/ChBvUFn+3qSZ61xqDB90tnaUkT3Hv1Ou1pZBfcACxiu4uqhT6hlGN1A5jz
         NWSS6/plnsErYjkDizQd67SDPuwpiNzoC37eVNbX6Ww/8Xy1QIUV0I+oVm8a33m1c3bC
         hofQstE/fXKPZceAlpa97Vna8ufjyydkZeN/oVIHvxi7yCD2uvi6KZVmqZp8aBoo4c2V
         QA4r+QYCo/pQwZ+ngsPAA15hFU4w8XSwUnAd6MGvsWed1//D1DOknfP0mHIQlm2FKSs2
         UtdysvqedY600+6hs1iU7wh25Fdp8CHmy5Rhsa89HYagIfq6vI8ZUhmXZ5t4IsA26wNf
         PxQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="vxfM/NdZ";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id n26si513466otk.5.2020.07.02.21.05.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 21:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06342phs076008;
	Fri, 3 Jul 2020 04:05:02 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 31xx1e8hpe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 03 Jul 2020 04:05:02 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0633whI4161859;
	Fri, 3 Jul 2020 04:03:01 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 31xfvwnane-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 03 Jul 2020 04:03:01 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 063430as001043;
	Fri, 3 Jul 2020 04:03:01 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 03 Jul 2020 04:03:00 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Bob Liu <bob.liu@oracle.com>, linux-scsi@vger.kernel.org
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>, lduncan@suse.com,
        michael.christie@oracle.com, open-iscsi@googlegroups.com
Subject: Re: [PATCH 1/2] scsi: iscsi: change back iscsi workqueue max_active argu to 1
Date: Fri,  3 Jul 2020 00:02:57 -0400
Message-Id: <159374890395.14616.7502772614929277035.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701030745.16897-1-bob.liu@oracle.com>
References: <20200701030745.16897-1-bob.liu@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007030027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=0 mlxlogscore=999 cotscore=-2147483648 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 mlxscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007030027
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="vxfM/NdZ";
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Wed, 1 Jul 2020 11:07:44 +0800, Bob Liu wrote:

> Commit 3ce4196 (scsi: iscsi: Register sysfs for iscsi workqueue) enables
> 'cpumask' support for iscsi workqueues.
> 
> While there is a mistake in that commit, it's unnecessary to set
> max_active = 2 since 'cpumask' can be modified when max_active = 1.
> 
> This patch change back max_active to 1 so as to keep the same behaviour as
> before.

Applied to 5.8/scsi-fixes, thanks!

[1/2] scsi: iscsi: Change iSCSI workqueue max_active back to 1
      https://git.kernel.org/mkp/scsi/c/1a9826204109

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/159374890395.14616.7502772614929277035.b4-ty%40oracle.com.
