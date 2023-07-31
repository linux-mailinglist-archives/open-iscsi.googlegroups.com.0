Return-Path: <open-iscsi+bncBDVIJONZ3YDRBVE6UCTAMGQEBP26EHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 4841676A172
	for <lists+open-iscsi@lfdr.de>; Mon, 31 Jul 2023 21:45:27 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id d2e1a72fcca58-68701df1ac7sf2785787b3a.1
        for <lists+open-iscsi@lfdr.de>; Mon, 31 Jul 2023 12:45:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690832726; cv=pass;
        d=google.com; s=arc-20160816;
        b=mzmbm17ZM0IWAKKuXG+JIOFrDT6Fwl49bkuLEodylhC4qFnsQ97RbAPl/nmiqcxwtD
         YUtbxeqCYrsDaM7bgOXwr9Pu17sayScSqhLohHf7+NYKcWRRrW7xzCN3vKwoMok5yr9H
         TIQGq3DEabuCeKVNprCTp3JH0XPkeGKRTJqmr5d+yWCOMiSpwpuOKF1p1fLZukCaxSf3
         ppIRSK2uiObw44my5GRTIYPZo4H7JvFMzhxVj9GD4czIV5ZbuccLs0U98x/Y08ghaiq3
         0uBHf6OsONIFpJ3+zuLmT5oEAPIjudwMmMV7k94s+Md+ZqTNSX4RTCD+kzAmo1Aanm0y
         6w8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=+pvDfOO1wtvh5+yE4GuZfdmdndFEI1HC73y7xncEN0M=;
        fh=FMSr4rbPOYu3dMUqPABygcjfoThK9t/BDAJUxxh1oKE=;
        b=OQeFsWkOp8kciBs2MuQyRlbmUr8bTY37uva6Af2l8mo7ADN4DgJAfhT+KQ0MfJXvOA
         3UuVp2SRcs4ykgAFAANsuO87JiCqBkgZKRLZv5n64vr3fAWPoMMljODa7bluZp8VPjk7
         mBxm/dExv/b9Ox0MsODXWZLTHkDdyES04Uc3h9/JEgiIWzwZuKxf5Iix8RwoRtJKqAyO
         Ag4OXW+1drud1v8z/omnDdRVIgNU+IBaoFYMxQslY5YiRgB4OlOVKqPaZc/cb0Ik1Z+u
         08o7dFTv8uZr/+IG3FWdSefxYH+0/yowHQlX8Xv3WRty+fBk+6qwDzatSoa+F8rBsxc7
         6+eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=0NWRYlXN;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690832726; x=1691437526;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+pvDfOO1wtvh5+yE4GuZfdmdndFEI1HC73y7xncEN0M=;
        b=SibkODYIQENYV55vmKZZmSQj9FhI5sS9NVCGPc7DqWQ39tIVeibp+rzIKZLLnTRM0+
         4ubgB+en71xPpuSR0ViAjHMMXC/oBRdKPlcpVZmi0iI0vv49RfxQtHcnnJ3A7Be9qlqQ
         iztYmOwrqAh1xcnw8CG9bkNL7R4AofuYp2HoUozLtSCduLQYyZ/PlmoUQX/nnz0EYHLI
         QkdLahWB21+NMMj53IwK+1Gl7ZIK0itV/iAbK5B2BFwYS3jJ+I0r+drTNHnUSg6HFYGQ
         jeekJlcpbBJYgb+8js0PYfQpE09Nti93Ja9cKpDLKavbTny4nXMscpWZAbXQUNZn+7DZ
         wyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690832726; x=1691437526;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+pvDfOO1wtvh5+yE4GuZfdmdndFEI1HC73y7xncEN0M=;
        b=OzXDmFaPwrltaIRYQuOCiQjRBjhqlkT65PEXy5S0Wb3VX1ZYk68xq2H5yomAn503hV
         drQ+gyPSgTchVrINNGfIPgz1C5rtXrIGJDs7C6uyodSZyxwGUUhiX0bV5liyzRgXAmDo
         +++qYGacUTHjh/noyeVkYB3pjaLFgXAorQR8TD2lVUIijsweJbTfZxioIGGduNrll+ua
         Ks77RKpxP6SD4bC/Rs29RfnTPS+lDXuLzUmjdz1td1VoH45UH3RonfJUetjxm+Vif6Ef
         4/eJLZFX3RjCoqzy3Mh+KCYRKjXXNKmsievCoJguYusV56H5Ou+TRf7jHE4SC5zlxFlr
         JhxA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLYPahjftaQlW1FN+Xg8alvFEIE+T18e9rHH1lE4W/UMvSkTxjgy
	RiTWLV3+VGvpWriZNQNZiDQ=
X-Google-Smtp-Source: APBJJlHPWAjA/KvCcSApI/trE0dE1XXMr8MWN1SI5nP4jv1QlS29p6WPUtlRjegXb5dlMY4Qb3hoHw==
X-Received: by 2002:a05:6a00:9a6:b0:687:404f:4d5a with SMTP id u38-20020a056a0009a600b00687404f4d5amr3713334pfg.13.1690832725797;
        Mon, 31 Jul 2023 12:45:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:9d86:0:b0:666:fa2f:83ad with SMTP id f6-20020aa79d86000000b00666fa2f83adls3653074pfq.1.-pod-prod-01-us;
 Mon, 31 Jul 2023 12:45:23 -0700 (PDT)
X-Received: by 2002:a05:6a00:a8e:b0:66a:2ff1:dee2 with SMTP id b14-20020a056a000a8e00b0066a2ff1dee2mr12985378pfl.10.1690832723342;
        Mon, 31 Jul 2023 12:45:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690832723; cv=none;
        d=google.com; s=arc-20160816;
        b=yL/O3NJbkmkQEz8emDucLFN2XzWjp7jNxcBKb867JmkRxCBYXzx7XuH6XuRQQ+4S9E
         mY0y8bBWJANR8fwo+zvAw+UUqWFRa1Uj9FiNwNtz7XR029D5BxIi9v2HzkaAvWM9P5yM
         lK6uf95SsXYeMc/vU07DEqh4ZG31MTLiSKWfLJMAT2+lx+8pX/oasYaFaKWZIAP+xVFw
         SzdLrq+4eIOLsHRjzEjGnVC1fkTDvIXWXSwElRCQAe0DAU+rl/usVqvkyYkJEQx3aDkU
         kEvrJ+8MK1QmpV3L2WN0P4hiF3qKJDgCOQ5IcUxqDQGXprIfwfZrjunA5Kxf4oXg5KMo
         imog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yFcTrHPuLCX1mvHoozfJBevhb7wRvXP2qL/c7m8L3Fk=;
        fh=FMSr4rbPOYu3dMUqPABygcjfoThK9t/BDAJUxxh1oKE=;
        b=0870uMK4/0sWwRcSL2sgMilNSgjSeSGGDAcQP8Hq4P1GhaEIdZcSe8oy/fJPAAfuPu
         5jcAdZlPz25uzOJsVAWHpZlfkUkcnAM99b9BP1kusfl7GRb7y8U2JT8lrBA4xlFzLduq
         Z2KRSGOglxxq7G5SZvbrfvABYpeHYxiex7iWCv1j+4H25YJo/0XWEl78XKxDZ7jYBB6K
         Nlra3vvlbtYMpkV05+YdUevqcyNbgNt6CeQfpFwMKimv02dh+lZ6b2S/s23a6C6sJmSg
         c6vfDHZZOIsjH21DGWDiNjy20YO7YbZiQTzACimlWbM4GXPIDM5sFIThY1kz6qbPZ3+h
         mMXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=0NWRYlXN;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id p33-20020a056a000a2100b00681f56016b9si719304pfh.4.2023.07.31.12.45.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Jul 2023 12:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36VDTaaA017799;
	Mon, 31 Jul 2023 19:45:21 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3s4sc2bf4n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 31 Jul 2023 19:45:21 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 36VI2TPD013610;
	Mon, 31 Jul 2023 19:45:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3s4s75cmr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 31 Jul 2023 19:45:20 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 36VJjEfh025102;
	Mon, 31 Jul 2023 19:45:19 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3s4s75cmf1-5;
	Mon, 31 Jul 2023 19:45:19 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com,
        jejb@linux.ibm.com, vikas.chaudhary@qlogic.com,
        JBottomley@Parallels.com, mchan@broadcom.com, benli@broadcom.com,
        ogerlitz@voltaire.com, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lin Ma <linma@zju.edu.cn>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH v2 1/2] scsi: iscsi: Add length check for nlattr payload
Date: Mon, 31 Jul 2023 15:45:06 -0400
Message-Id: <169083266401.2873709.2360198964162460177.b4-ty@oracle.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230725024529.428311-1-linma@zju.edu.cn>
References: <20230725024529.428311-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-31_13,2023-07-31_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2307310179
X-Proofpoint-ORIG-GUID: sNCeZxblS2RBoJwpajY-nWOiev6dTE0S
X-Proofpoint-GUID: sNCeZxblS2RBoJwpajY-nWOiev6dTE0S
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=0NWRYlXN;
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

On Tue, 25 Jul 2023 10:45:29 +0800, Lin Ma wrote:

> The current NETLINK_ISCSI netlink parsing loop checks every nlmsg to
> make sure the length is bigger than the sizeof(struct iscsi_uevent) and
> then calls iscsi_if_recv_msg(...).
> 
>   nlh = nlmsg_hdr(skb);
>   if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
>     skb->len < nlh->nlmsg_len) {
>     break;
>   }
>   ...
>   err = iscsi_if_recv_msg(skb, nlh, &group);
> 
> [...]

Applied to 6.6/scsi-queue, thanks!

[1/2] scsi: iscsi: Add length check for nlattr payload
      https://git.kernel.org/mkp/scsi/c/971dfcb74a80

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/169083266401.2873709.2360198964162460177.b4-ty%40oracle.com.
