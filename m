Return-Path: <open-iscsi+bncBDVIJONZ3YDRBQXOQP4QKGQEJDXBRHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E28923186B
	for <lists+open-iscsi@lfdr.de>; Wed, 29 Jul 2020 06:12:52 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id z8sf1277603pje.0
        for <lists+open-iscsi@lfdr.de>; Tue, 28 Jul 2020 21:12:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595995971; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLExq25QqIsTQdp8bLzSITIVxBYBa9L+VS5EH5Vh7fObEtQM8XYu9Hf41aQVPqolZo
         8p+oGue6f14Cis3n0V2Tsa3TUWcSDXgGy3RUe/zHuLywf51ceF1H31iU3/OiHCCEteYf
         ZCCVZCWO+uN64TyjwIMz8DsT87W6eryHRqi0veL1KYw37iYDqxOZV7cfrXug1gfwaTND
         V/qveUvVqcnhKwHoSSaxb3FOi1HFDDjXr7577HJByxlgDDRsGXtnHvrFxPaxJz/N7YzT
         04vBPliCVcDVRwt6LOQm+zBjAxnmbvcUlPqDKNGAsXQKqYBb9P8vf0Mh6PmPO3DfQEQd
         6G+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=6WyUzLJg1K+FRfIHR0d/v580wLX16H9FVEnLPerVHE8=;
        b=xNXqb7FeAJ3Gp48JUx7nkHzm+kJ5yFxGk6qocvxU2UAunlCDs915efaqvch1tAuXfC
         G/LyBieuTwpAO03INgZPt+kGgYptpOf+/MfEh/RDgKnH6dFxMJeeDaE8kiHjm97SEDj3
         IrCSEFOSB2YOzk3dT/JGVFOXSzdmJMYAcA+imrIBFj+rMaHHSlDZKUHO3NbcReHgpPho
         60iqbS2bNDOvdPbXsNjChzjoPCJl4uc9Im/OWUHZMqjb+uIk1B8kbgfiLwZZ7XqaagCQ
         nCIob2Y7sJp1/eyeyLGrcl0FvbCcgIglI0ujPMczr7IP/4Mduj99Pzb8i3tjonpBvnCC
         /htA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=iuvdQaA9;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6WyUzLJg1K+FRfIHR0d/v580wLX16H9FVEnLPerVHE8=;
        b=K0FfbKyWnudJcsFIDUou1LMBxMkxuDTdc6V/TPkc4dGnFiCwlqCA/qAp7WrmQZdQKO
         JzDD9z41IjWFCaSdUHVGBmRt8qoTArc66Zon4PyxYDo4BYxUqejKu3vsMQ+JbCp+dI8B
         SGLA4OUqXcsH0hM2H1oSl+QTcB9tpSdUvaHr0oRkfPPdCQUFdHL1u18LFNX7etuK8h0F
         eLm6vbXERkl2Tkf0W2qFyHRswXA6hDb+MFCXYoeiQFwm+GNdhfpWA6HCmZoCQRr7x3Pv
         sDGwntOikqPtdXDJG6x4q83j5+1hl9cPs4pQ8TLnoRylLY6JtjQU322WGDeA3GDQ76fb
         44/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6WyUzLJg1K+FRfIHR0d/v580wLX16H9FVEnLPerVHE8=;
        b=NwKflxfY8JULmn7gxLl5YSAmyz3z5xiajlvlbniG6u7aLi+ZbdN3QdNUGc4yi5oGrC
         /3RY7EYWlmQcLGjtRAYmQsq213BKJUEG8YhXo7LV1BU7IayXHrS67kZYUHteGvYgFVI8
         RBP6RDW8PFsONurkJf4g2yL6k0xWBpa6xLXBH5U5B48as8nFGmlKqXFnnDn8/0AyU3rg
         jHbcDINRTt2hMlJg7OWmfO+lCehp6Z9OEqCXNOIxl00zqCrWqybGgl+PFDhQjViPSzxo
         vNxPHLQR3Q+qio4ixyZjK3GhgoQZQ4hvLIMt+gn36IMNGP2oJngezLQX7mAZJnUkqGdp
         Y7ZA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531NZrDN7soByet81Tup53/KAPU7VNugv9/t5KKqkpclFm+8JgIQ
	wMCGSKj7cPGa3iXglwPxLIk=
X-Google-Smtp-Source: ABdhPJwg8I0pPWe3zEChEvStqOeUSWMVhb+BD6fTrRCPt1wjhMUdF4lFCaQvF0r+nnRye+7b8ixfHA==
X-Received: by 2002:a17:90b:46c1:: with SMTP id jx1mr8013672pjb.157.1595995970833;
        Tue, 28 Jul 2020 21:12:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:7616:: with SMTP id k22ls396079pll.1.gmail; Tue, 28
 Jul 2020 21:12:50 -0700 (PDT)
X-Received: by 2002:a17:902:9307:: with SMTP id bc7mr27330441plb.213.1595995970311;
        Tue, 28 Jul 2020 21:12:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595995970; cv=none;
        d=google.com; s=arc-20160816;
        b=MIgWexSTF4Hcuo0YgVML5+rUrRqfiSKUkrk7HUJvX2LUTdAOUg+/S0IXPFtdiXw6DE
         EeacPUgP834wkNIQeRuNbVnrD6SHuwC0JWQMdg40Tp43DZ/k4Sh/iNvl0kjtokHDBpGt
         0GcYQbD1RF7OFutI1g7wSy6cnfrt5MEd7L2ZxpFc13Ghq8gT7uJfeTd7z1F5VD83ST/7
         IcyvaNi382HJXkQzfXXwO6HzfNxvH3L07mbzgzJYrzMYza/9L2a4sA5zEZm+xxkpTlB+
         ByPSv9rD/nxRhLtquLIca1wWHxQsIvm3EgDnGH6rIxQexueyZvH/QZWPCj2KmE4+989W
         yUoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LawUWswJxsYW16Uo1LM0iQFVAkkF5ZnMSyZcX63eLck=;
        b=pyUYGvr1faSkXPOiAsvGpNlFvzbmSfuln2ld8VW126zO2xg0Eey7JPRGIpnTZ49YW6
         UGUFnDtI6t7iWK1CN+1a7ukvC0/mwdkpBLeGyxjyMr89WWr2URYYGNPw/W9KRZu6ynRn
         u4TALUNq9agxgkmKGj9Zll7g0i8/aR0sjiLO3b9PavGc3Mg5C9HpnlAxQAbefhWoXiK5
         ygheQ6X16I3+eMnmGq6DxxFm2w77WKrVrMrDxRuQwyEws1955dQ1wDbmjSXf8AAXECxd
         wUtV6q7H2kQotLAMavcAD8O5b6ohe/YFn12z1wIINDUsIpwdb77CgWy4J1D+Vx+7Ayy+
         S7Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=iuvdQaA9;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id n136si45804pfd.1.2020.07.28.21.12.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jul 2020 21:12:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06T4CLf8185406;
	Wed, 29 Jul 2020 04:12:48 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 32hu1jk668-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 29 Jul 2020 04:12:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06T43M81182563;
	Wed, 29 Jul 2020 04:10:48 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 32hu5u15rf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 29 Jul 2020 04:10:48 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06T4AlNm024998;
	Wed, 29 Jul 2020 04:10:47 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 28 Jul 2020 21:10:46 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Jing Xiangfeng <jingxiangfeng@huawei.com>, jejb@linux.ibm.com,
        cleech@redhat.com, lduncan@suse.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Wed, 29 Jul 2020 00:10:38 -0400
Message-Id: <159599579269.11289.8326075241681410079.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615081226.183068-1-jingxiangfeng@huawei.com>
References: <20200615081226.183068-1-jingxiangfeng@huawei.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9696 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=953 mlxscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007290027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9696 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 mlxlogscore=976
 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0 phishscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007290028
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=iuvdQaA9;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Mon, 15 Jun 2020 16:12:26 +0800, Jing Xiangfeng wrote:

> If scsi_host_lookup() failes we will jump to put_host, which may
> cause panic. Jump to exit_set_fnode to fix it.

Applied to 5.9/scsi-queue, thanks!

[1/1] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
      https://git.kernel.org/mkp/scsi/c/68e12e5f6135

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/159599579269.11289.8326075241681410079.b4-ty%40oracle.com.
