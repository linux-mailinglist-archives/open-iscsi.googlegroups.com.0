Return-Path: <open-iscsi+bncBDVIJONZ3YDRB7NRXH5QKGQEDP2O6FA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0E52792B4
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 22:54:23 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id s2sf3203832pgm.18
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 13:54:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601067261; cv=pass;
        d=google.com; s=arc-20160816;
        b=P7LirdOsjGCmeNsH2qGd0b2gNU2+mcI5fHrOPqKO+bb85Z+Rwk6iG59COK5l22X2NJ
         l+ykEgKpk8VvyCgDqO56CjAK3GMqdRXhx4gP2wnmeGviSagyEr1mz5qhjMczqsKVKneR
         vowfNUX1kTZD05q8A2kIad79r+it4yGrI5SF7RmfYa89XUvD39RYerOcJZCB/zVZatyo
         537AlGsSx9gChFX4wz+wXOsSg9xPnYZ4GchModMeWr2mMFg5JKlWI4aMs9Nvy01gWUqu
         DVGpGSuVld7DbGRdX/E5VHh2PRvucCTNsQITMs4Yy+n6xQQpEGta2DgzP8W1+/NDrgKK
         cMpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=3+Z4bRCXJ0wq+xCLNTtka+aVpL8vs1TB12Q1x3t6jrY=;
        b=jh7N5SxoJZ0Lr62+FYpV91+2UmTLT5e6FypsdSevHDuhTycRMXCxJ0g4b7C/U2LsDt
         DqxIKUplCYrI0jwr9keDVDWVWCdpTaq0u+Br8r9YB9RGt949PykVhtgVbbuEfLnkp65F
         vgx61Bx813XOkbHYkfpqsoa9yZx3KoNgV2ci+G2J9V3x7QAhN/vgZOvk+Pql8bEnlN5n
         EAdCkqWpYNGwLdJTgWqGXEtdG5O8up//cmxdyicaeqh4xqkU6UwK33bjfwStb0aNjJI6
         b8KPGnUrG7OjlFFYpCbTCTC71CC/xFe+rjUV6KT86JXNTj5zleJx1z+nscHDRPxNsIeJ
         xrtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=t0qzyxZi;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3+Z4bRCXJ0wq+xCLNTtka+aVpL8vs1TB12Q1x3t6jrY=;
        b=I5prIxqITS1qhjxhmy4k5Z7JuIgHMEpp6ElWy53kulWSctKCMfLN8E7wAUswZsMgdN
         fKVM6mIptQwCd4j6a9VwwfYVedqi6Lu0QiMmMCKGZN3rcOZpt5dAXEAK6GqzfM9TzVWK
         GgggAjx4rD7bPmG0CUpLiak/m0mLoZtyJp+oMXdbW4HZk0N4csitGKzkGpiTd908wjyF
         pWziUlG0myvSyohGY/7C5n+uVgx7SSYDoZPK8ntRSsQBZfCmR5kuDpuI4hubSS5tIsRE
         WfvTYRDyAi5V6A2jM+Kcn1f+wfbSJnAwGCyzHaZThtrc+sLPn9aE/5VDBYXA9FPtOR7V
         ydCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3+Z4bRCXJ0wq+xCLNTtka+aVpL8vs1TB12Q1x3t6jrY=;
        b=OIr5Eg0pJ34XTi5loz22+ArtsVp1Ld8AX5ikeyVybSH1Kt5sxXyzIrGMyGXdKJMmpH
         9ddut3qRg+cA7Wpz13+03+OVuTh7FmFtpYJ72xGJHUBa7lo5mKR/GB1mrioIEAPfE3/i
         GVZqW7ZQAInf93AHAyC7EJ/dUdp+awi7pFIiPQ5oimrcQiU8GTyqHGrxS6WiDu8Co8Wj
         werqonSiB/tPY4LvN5JS3GihsGQLkNbQPO2XLb5vPAvREkjUWnGMBo0lWSRktIoW0OHM
         TWP/16NlgpLQ0IKJuJcIC0UNOtp6qqJLHgTYBWSdYibZ4APxNT/dglTOr72KhtmJoegI
         llTA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530A0kom+Auvl1UurAuXafnxoyWeP6obvDSwb22b0PUv6x0VNNpY
	ELx7lxcKUezwT/uOeWl0lZg=
X-Google-Smtp-Source: ABdhPJxcNtzGUAir/fGl5v9ds9abWzwymwgBG0y1+4ZGNXXzZDVyRgitflu8uzHM2+I2bnWWp4cTBw==
X-Received: by 2002:a62:15c2:0:b029:150:da14:9ad4 with SMTP id 185-20020a6215c20000b0290150da149ad4mr400872pfv.14.1601067261483;
        Fri, 25 Sep 2020 13:54:21 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:70cc:: with SMTP id l12ls117927plt.1.gmail; Fri, 25
 Sep 2020 13:54:20 -0700 (PDT)
X-Received: by 2002:a17:90b:70e:: with SMTP id s14mr373285pjz.206.1601067260628;
        Fri, 25 Sep 2020 13:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601067260; cv=none;
        d=google.com; s=arc-20160816;
        b=Z2ZNbnG5gN+TwjodglJMi5hzw0ZQMXnLBsqQ8fJZdXNkzyMk5SpzdckYKFGr9CW6gd
         gynK1a5axb3rM+7odVhHNYSEm1DwNVCKpLze7Lq6y6FG/2YpCpPIEMCBY4P6cdWiQxcc
         U7JVAG+QZly/72DHvGlTRwLACyo12Y5atSkr4VOWlpf4PI4DEwnSkwGAxGVY6vfeZwt8
         BeLO4iRy2LiGeAyHH3LBFf5QNWnODgb4sHxceFFyxWPIMmeWcOIIKtHRDcBeDfAuozux
         wSMSffmlv/1z0VhGKX8Ow9EB8yKG8BdEOGkw0Kj2+f3lrMdat0FjoCnKQO07Qxpoa6bf
         nJiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature;
        bh=KE/6frUW0qLJ4yGqJjxsOBztcMMvJKPi7N6S9765s1A=;
        b=F64LIj8HbueGAi422YJwhi3E2ICUxrk4O0wGvHCPFme1KSznEBfWxI6rzXIpW2N23a
         VrgRMzDp7WgL6z2JAzdyTaYQOPTtE7G0WrWfuOtuIOzCKXZczpeS4S2wVg8FnYsgCjdD
         3AiZxQ2cGs+wGTFvIzjHj8komeDKP1s/4McKA/NDAAsqtwK2w2+7u4LNfCljSsjjmsx3
         UztAV+7YkPEcn3CnCLcWRhMAUcrW4dpztY0SGN4zPR9F7FFreKoLsdEfOXh5oDd2uSfN
         cXt8g6mE/3pg3heW4FhF4DwRPN8R8rj6iWx1JSmF9IFi8uvl5DF60Bt+x8JVANuKPs+a
         B44w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=t0qzyxZi;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id b20si302202pls.0.2020.09.25.13.54.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 13:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08PKn2cc039197;
	Fri, 25 Sep 2020 20:54:14 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 33ndnuysne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 25 Sep 2020 20:54:14 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08PKoEmv040658;
	Fri, 25 Sep 2020 20:54:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3020.oracle.com with ESMTP id 33r28yufem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 25 Sep 2020 20:54:13 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08PKsBj6030876;
	Fri, 25 Sep 2020 20:54:11 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 25 Sep 2020 13:54:10 -0700
To: Coly Li <colyli@suse.de>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        netdev@vger.kernel.org, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vasily Averin <vvs@virtuozzo.com>,
        Cong
 Wang <amwang@redhat.com>, Mike Christie <michaelc@cs.wisc.edu>,
        Lee
 Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Christoph
 Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH v8 6/7] scsi: libiscsi: use sendpage_ok() in
 iscsi_tcp_segment_map()
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq18scxinmw.fsf@ca-mkp.ca.oracle.com>
References: <20200925150119.112016-1-colyli@suse.de>
	<20200925150119.112016-7-colyli@suse.de>
Date: Fri, 25 Sep 2020 16:54:07 -0400
In-Reply-To: <20200925150119.112016-7-colyli@suse.de> (Coly Li's message of
	"Fri, 25 Sep 2020 23:01:18 +0800")
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9755 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=845
 suspectscore=1 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009250150
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9755 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 suspectscore=1 bulkscore=0
 clxscore=1011 impostorscore=0 mlxlogscore=827 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009250150
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=t0qzyxZi;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Coly,

> In iscsci driver, iscsi_tcp_segment_map() uses the following code to
> check whether the page should or not be handled by sendpage:
>     if (!recv && page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)))
>
> The "page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)" part is to
> make sure the page can be sent to network layer's zero copy path. This
> part is exactly what sendpage_ok() does.
>
> This patch uses  use sendpage_ok() in iscsi_tcp_segment_map() to replace
> the original open coded checks.

Looks fine to me.

Acked-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq18scxinmw.fsf%40ca-mkp.ca.oracle.com.
