Return-Path: <open-iscsi+bncBDVIJONZ3YDRBZWT6XZQKGQE7NGQL2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id A477B194F39
	for <lists+open-iscsi@lfdr.de>; Fri, 27 Mar 2020 03:50:15 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id n89sf7015047qte.15
        for <lists+open-iscsi@lfdr.de>; Thu, 26 Mar 2020 19:50:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585277414; cv=pass;
        d=google.com; s=arc-20160816;
        b=HdRjNFLCwCpHel4v2DqJ1bRhuc6iBhKtOoF8El8CGSv6YWQ7WbDb24JaSgyRu5BmSI
         fP+nVqF4pTLLpbl07nx/XA+bkh2hkirLvHysQn/G2Q2n+hmzcUK/t4G/fyQtL1QxuZFQ
         14Uzg1ZfUDYflRvYF+Ph6o19DjLn7oge3/rWzihMsyxpZcQjpWIHPAMxO4nwwggMDNVH
         IZAVSOJySO3l9KwChSvQMbJJQwjXAcNoINqbB6kChr3uxjgk3GB3nnAlS/Q6WP1J5uml
         E+xO7F1PMwh6qCfIBL0xyY/9FPivMlL/PHNsRtSXYpTG8L/NjxUQLRKSP+DGEkjZVcw1
         YGHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=PHTqv6AmQ+mRO1+fbTemg0C89FEbeOId0NOFSVy15XE=;
        b=ctgS+y+oJR3xgFUl/kMqHygn2FasV+ju9QDhg/YLEJBEZMxm/KSbuVlLbOFfE8bdlM
         35ydm8A+YH2LXVvQyZPdXP1/yTOAoAJzaZnMYFZI35Sos7m5wqndq4Ss7rBpsp2Ciwov
         /DKuHTBI94UYlFLs70+RUdYAOjKtH8pRN+/TKTAAnYm6Svhk+kNy/sPrAaA0XqKgh6TN
         QAYVq2nRFbPjewrBvMHEoMLXpgbo/VdQOpEAH7H2Q0KpHbpvwGBAkXIUtdTPDxzdXdXf
         wLZ3PlxvQwQXkIrGjS7Eesk+fMzLnR6NTsjzJPRTePoN2Dr5adBxvoC1M0yxzPOk/1LQ
         uvKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=z3LeB4Ob;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PHTqv6AmQ+mRO1+fbTemg0C89FEbeOId0NOFSVy15XE=;
        b=EfwwMVz0ODhSkEBYb3nXdPUKjPL4d987bMk6GrFeiTdJ/Jy6pZkjaG4C+Rgb/JJxj0
         E9JAnU72FTcYLOA3uTt9Hhn7Cczquft+ZxLTK6sJ0VScgaNMKlO6v35lpkvJ0qHvWpsp
         1iYuDG8L8yNuXYBxk3ldGsdT6FpaogndBvBGxNn8YAmKcWfCQPz2qMaDlfvMgy1eXRms
         KCKBI2XsABUIPamgb6rIUijfQuX+TXqnhBr5RqCXoswMiSQAVnw9o3hoD3RJpb1QFpwa
         skdSBNlfwRgLoY0/foQqXfuSmFBt0JhEHRRCqcrk0OEu6a939szmeyIHuK6zbfXz2hvt
         n5Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PHTqv6AmQ+mRO1+fbTemg0C89FEbeOId0NOFSVy15XE=;
        b=r9zdw3mluSPWJVF8tfBJ9rM+SWKIOVvzbBDT2TtA0Iyb/6kHPM9M25lIF88+Pm2KWE
         +CC5/3GRK7WWz0ZmVjvG3bqSD6oddZaQIa/LNtI2xw4yxD3bfTdGq3XYT1yR4gdgqsYz
         wLGUUjvyKyQSatfrd5J0Uj9QJJWuztjQ0K9b1c8IvJ5+DZENx6tmrHfpppPN5lT9P/AT
         +k/ngfyOkkijlVRyLIecGO2CBYvwFsnPIZPkFwsMnSX+Sm+Y5jwbuRyk2psi2GFO2hUp
         drRa22P93/arQ9bjIkMXJImjTStWsQxl2G7jgEnDHkpoxfX4vWqU39ifpf/NvjDGlez8
         7hcg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ0auj1hrbTzKqx/RUK66tpmv1ylDCnEUUcyjgLnfaeJ9hM33OGg
	qtQW48YIxAv64Gqyh7s9p40=
X-Google-Smtp-Source: ADFU+vuarHm54gPuG55eRUN1mbX98fP4eFSmdUF+0EyM4MeATO8ezSneXUJlm2s6PLphcESoLOkEQw==
X-Received: by 2002:a0c:e848:: with SMTP id l8mr12004371qvo.82.1585277414318;
        Thu, 26 Mar 2020 19:50:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:6714:: with SMTP id b20ls3747475qkc.5.gmail; Thu, 26 Mar
 2020 19:50:13 -0700 (PDT)
X-Received: by 2002:a37:7a84:: with SMTP id v126mr11909088qkc.423.1585277413910;
        Thu, 26 Mar 2020 19:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585277413; cv=none;
        d=google.com; s=arc-20160816;
        b=v19gxjOQ8sao6HIlXuCvMukA+5Ap5nyf3C4vq0ULuyY0vuUzgxIAXor4vn8qmS/OjH
         OjRJatRmJNWGKZPmrMGJ5f2a8Xc2537NjS9XClV0asc/1HoxP2tyBNPySYEW30w156zr
         1ZAwFq8C98otPYRmQndhqY6sTnwhc6csH/XCuS3fK9VkQlfzXjBoEWiGvrOOCtdmyo5k
         H5aofd8IZ1HSjRjjQTiPKpIw2BNQjyt0GeHZkn7/0x6jel3hb1J+ESk7KGlsRjm2PjzH
         1khrgVocd4owEhmENdiduYAZztLQgwZZ3MP4KbANbbIDLckgo00Age4NDpb/n6HkDwbo
         M3aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=KXjmN+364jiyCzv1gWGc+e6yHZaiF4mXo9ppkls1CVs=;
        b=fnc0pj4xQ8lIc4KSMLD5YhTAQpXfRH5w9/T00f2QEtlsKz4ZLhiLY7ZC1/1PaDYI1f
         UB7kgmrWXBKz/QvFrSZcIbQYjU2xTq6MshF8TKQ/WwCd+QrM7l93ExEgS7fxkgHzdsqA
         NoVc+cZpDQMn6RsFndxPDyc/fjjtEwyxprAl1ICrvZQA+SvOE9p2Mlwe9uwPzEUzlnJw
         xB5NyBYB/btJzK8XsF7N9XFz1D3ynOTbVq3dJMh7n9rp3pnv6QxixTiajB+YigI+xZ13
         ZLiNm4H3xE3SybEFH95D0eT2CAvJ8GuBb+A5sQCUiqzc50bJx7XL5sqqugPjCaPxOBnx
         knkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=z3LeB4Ob;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id c194si243754qkb.0.2020.03.26.19.50.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 19:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02R2nuQ2110950;
	Fri, 27 Mar 2020 02:50:12 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 3014598qx4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 Mar 2020 02:50:12 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02R2nncF122492;
	Fri, 27 Mar 2020 02:50:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 3003gn1ghw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 27 Mar 2020 02:50:12 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02R2oAAL023461;
	Fri, 27 Mar 2020 02:50:11 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 26 Mar 2020 19:50:10 -0700
To: "wubo \(T\)" <wubo40@huawei.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        "linux-scsi\@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "open-iscsi\@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linfeilong <linfeilong@huawei.com>,
        "liuzhiqiang \(I\)" <liuzhiqiang26@huawei.com>
Subject: Re: [PATCH] scsi:libiscsi:Fix an error count for active session
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6916A28542@DGGEML525-MBS.china.huawei.com>
Date: Thu, 26 Mar 2020 22:50:07 -0400
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6916A28542@DGGEML525-MBS.china.huawei.com>
	(wubo's message of "Wed, 25 Mar 2020 06:53:25 +0000")
Message-ID: <yq1tv2acy00.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 phishscore=0 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003270022
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 mlxlogscore=999
 adultscore=0 suspectscore=0 impostorscore=0 mlxscore=0 spamscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003270022
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=z3LeB4Ob;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


wubo,

> Fix an error count for active session if the total_cmds is invalid on
> the function iscsi_session_setup().  decrement the number of active
> sessions before the func return.

Applied to 5.7/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1tv2acy00.fsf%40oracle.com.
