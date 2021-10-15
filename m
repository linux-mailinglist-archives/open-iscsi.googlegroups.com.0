Return-Path: <open-iscsi+bncBAABBCG6U2FQMGQEVEYKBXQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 355E842F871
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 18:40:41 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id f11-20020ac80a4b000000b002a778ec70e4sf6974067qti.21
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 09:40:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634316040; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqJ+DZjpuRg5h3LyYKSfTIlYCK1j5qACIPsYMQ1aTAbaFJEjyt/4SIowY034ZBKqhq
         jX2gXK29gPVFv4CqQfIBkR6nfjSY7Cvv5ZxOhPVglz0tuFI9guIh4FMZsUOyMJrt5w2B
         1irpKsMCnu0PPVd5rjbx0YnOc8zO6s3hLUwQhm4AZZhqP6kn85juqb7AwIArZGz0DFQh
         JXn0DdW5JISI7UJUfmZtPJBKTY3gRG/rkEnbjdO98SFqFap3STzlA65NtV4fztfPMhQa
         pGHaaUIzXnUohgoOhEXcTZ7DMsb/R+wDIqAcFpC6QY9zBChrEXFAYU8kqoVlUVt8V1U+
         W5yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=deCb2JGv1HFKdG8Vea4NJuYcwRS9miQFJNVx0WcbY/I=;
        b=uEZgKX35Th629h/m8hn1tk2K7t7VdHK0q3AyDlfSOogLrUcAIE2sA/pY0lKDlgkNWS
         n3yZOoZjoGZY6+hZNtI0to1EXY1MdwCXYXRPExi606XLfx7CA+MesOkrvGefiXox0Xiz
         nXIpS+6NkMD92VethurTe4bdzgmCdlqFttZ0XC3Y4kCteNfGqbvODu149ILLqq7sypOi
         fGeuH8nvt2rl/YBma96Pp91NDFdelUvBoVm1wMSCdhSfjSFUWKuozWvbfftEDErhbN7/
         b9qIAFnuhGXi+kcrxpm+3vmCFccnmlUEC+ppitv+AXIk2DfbyEJ0aIuArqLHlx+VQmqd
         vCRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=ehXH5CNx;
       spf=pass (google.com: domain of vegard.nossum@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=vegard.nossum@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=deCb2JGv1HFKdG8Vea4NJuYcwRS9miQFJNVx0WcbY/I=;
        b=stY9i6DrgL16g5C+YAHgtevtZDmWt3+n68pmtGRA1TJjTm0pjt7PmoE4bEeRGSKehA
         RTfBuYh8fnL2m4NgASuck3d4if1PGC6ggVRGd0Dj0tOAk0S6ioVx1dgTNRvukTu0B7DK
         LqQHLxHCc1YFpcBXZXLE2J7x64AViAW0HCLnIDSgqsFHg4nOfdTqNYCzjqQw0baSMwnL
         B7oVVCznOS4wPaojNMbI/wg9aczf4OVKnjmJDn0ajcN5FaIEBehSQcs2kq2N/iWIavLK
         gpu9aY7KEsT28cNWMNXRxOBEkZZkl3AK212vodEusaNWR6tAzy131pfx6eiygxB3Fmrf
         IHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=deCb2JGv1HFKdG8Vea4NJuYcwRS9miQFJNVx0WcbY/I=;
        b=ceVwYAxdtnU6muHpmHNnLn2gB3ahRejgl6jW6sbUdOFdwxX/LFTf2xOw6bM+yaIWaL
         58SDYSThAN23QYSnXAdDtJ+6rC1HY1iAm5sXXPFT7z3Z0PEZUgz3S4S8EdYjw/R6zC5k
         WSKqQZpK0W0VoPI7cV9ZP+PdTcQr0F8uaBYBHbQc/otnsmzC68+Poc6DEfni4U8r/4qZ
         8v7sAOUWMGf/aNrAfluZ488t4A59eAv27K/yV8TuCIvT/aIVxK8nezCiYlCfNjd+jLi9
         YaI1tioHHDP9Uu1kF30iJAJ0u5oR4LWYNvsCMvyNsM0dnvS5rsrCV6vj+ecWrifsk+zm
         AimQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532rYR3s8o32KRrgzQO/Y8vfTCg8Fy63/dzX1dJX2F2cRMgTpJPF
	su3C42QHf1P0RFLUNvWWImk=
X-Google-Smtp-Source: ABdhPJyMy58bw46g6m+KsrAlPGZsQLVOnl7Xtxw+OZxPgxtHKBvUxNqKANSEp0R6wu7pO06Ga61Hvg==
X-Received: by 2002:a37:f902:: with SMTP id l2mr10612193qkj.511.1634316040347;
        Fri, 15 Oct 2021 09:40:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1789:: with SMTP id ay9ls1845924qkb.2.gmail; Fri,
 15 Oct 2021 09:40:40 -0700 (PDT)
X-Received: by 2002:a37:2ec1:: with SMTP id u184mr10619567qkh.500.1634316039995;
        Fri, 15 Oct 2021 09:40:39 -0700 (PDT)
Received: by 2002:a05:620a:103c:b0:45f:acc1:6d2b with SMTP id af79cd13be357-45faf282911ms85a;
        Fri, 15 Oct 2021 06:16:05 -0700 (PDT)
X-Received: by 2002:a1f:2441:: with SMTP id k62mr12491536vkk.22.1634303765302;
        Fri, 15 Oct 2021 06:16:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634303765; cv=none;
        d=google.com; s=arc-20160816;
        b=I+PnyQkXF5rOZBVnOjdHhkz4CJot2pQXR9JVIeKL9F9iZlky8SxH2dssrf6qkPCtCt
         thbJVDIoopJo4pa7rB9nOKA+B/QDHEyf2EnWtnDkiXDOCK2ka3hx8r2XW0xhshQ69rqB
         zqVhx6dq25dcOVTWRQaXMaFDAIMYZJk8dGQ3JtsCcOVVduAw5JOga0Q5AKd8X8QIlxZ9
         FH/fkjjeBmSz718QyxmPp9IyNzdzJV0ofbZWKvq7CZz8queqLFWeyujSMAtQ3SZtn93f
         PUOz34wXn3ladgoKH/PckMCQs8GS4OHSBZrK1i/u82dUWIYQCvGsRvbu3NcWVhVAhrRo
         K4LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eIA1sZqyZ8h65Z37L7HA5IsLkhh3NOnbBnYV1AxHV68=;
        b=uKP/2uLoL03aNe7R2MAw/FTFYLsCV7kPqJR1aQkTUaYW1NR4VNFyESAhipW+qF6NaK
         7dMGCbbtzOpdY+ceaa8Ydou0/GliqB5FiZEkMXHNAIVzQvjAyCUQt+xkn7eXGvqH4Wym
         qIVpnVuwEXhwiDD5MWWFOm8EvUvcF/miXma1t6L/tlJVDb9/v1FGFgOTkrz+fR+Js13E
         P7UCzOC1mzMkfbwvzJdHCzbEGPFcIxDBVsHuJd2T76F2p0ZNINnutjFAAipa+onALn7G
         rbK53pbSOMsEampzy+yiEe2JAoRLzPfPK58Z1fFjemD8q3RSFqD78fHHNLy0HEdRzrUg
         mpwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=ehXH5CNx;
       spf=pass (google.com: domain of vegard.nossum@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=vegard.nossum@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id h82si348289vke.1.2021.10.15.06.16.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 06:16:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of vegard.nossum@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19FBeijF017156;
	Fri, 15 Oct 2021 13:16:01 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by mx0b-00069f02.pphosted.com with ESMTP id 3bph1bysft-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Oct 2021 13:16:00 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19FDAbqj124785;
	Fri, 15 Oct 2021 13:15:58 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3030.oracle.com with ESMTP id 3bkyxwva8p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Oct 2021 13:15:58 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 19FDFvAF140872;
	Fri, 15 Oct 2021 13:15:57 GMT
Received: from t460.home (dhcp-10-175-9-30.vpn.oracle.com [10.175.9.30])
	by aserp3030.oracle.com with ESMTP id 3bkyxwva5g-1;
	Fri, 15 Oct 2021 13:15:57 +0000
From: Vegard Nossum <vegard.nossum@oracle.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vegard Nossum <vegard.nossum@oracle.com>,
        Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH] scsi: libiscsi: select CRYPTO_HASH for ISCSI_TCP
Date: Fri, 15 Oct 2021 15:11:15 +0200
Message-Id: <20211015131115.12720-1-vegard.nossum@oracle.com>
X-Mailer: git-send-email 2.23.0.718.g5ad94255a8
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: jbTmhyyAuOtWN8vXrnML-2n52vzeZvZe
X-Proofpoint-GUID: jbTmhyyAuOtWN8vXrnML-2n52vzeZvZe
X-Original-Sender: vegard.nossum@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=ehXH5CNx;
       spf=pass (google.com: domain of vegard.nossum@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=vegard.nossum@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Fix the following build/link error by adding a dependency on CRYPTO_HASH:

  ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_dgst_header':
  libiscsi_tcp.c:(.text+0x237): undefined reference to `crypto_ahash_digest'
  ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_segment_done':
  libiscsi_tcp.c:(.text+0x1325): undefined reference to `crypto_ahash_final'

Fixes: 5d6ac29b9ebf2 ("iscsi_tcp: Use ahash")
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Vegard Nossum <vegard.nossum@oracle.com>
---
 drivers/scsi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
index 6e3a04107bb65..09764f3c42447 100644
--- a/drivers/scsi/Kconfig
+++ b/drivers/scsi/Kconfig
@@ -290,6 +290,7 @@ config ISCSI_TCP
 	tristate "iSCSI Initiator over TCP/IP"
 	depends on SCSI && INET
 	select CRYPTO
+	select CRYPTO_HASH
 	select CRYPTO_MD5
 	select CRYPTO_CRC32C
 	select SCSI_ISCSI_ATTRS
-- 
2.23.0.718.g5ad94255a8

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211015131115.12720-1-vegard.nossum%40oracle.com.
