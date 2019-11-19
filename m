Return-Path: <open-iscsi+bncBDVIJONZ3YDRBBEDZ3XAKGQEICWTVLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1AC101594
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Nov 2019 06:45:42 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id u9sf12521046plq.1
        for <lists+open-iscsi@lfdr.de>; Mon, 18 Nov 2019 21:45:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574142340; cv=pass;
        d=google.com; s=arc-20160816;
        b=YbYb9FhZO0rvQepaExyNPpFOZYDcT/rK5vCTUDT/Yg4iidQ6WvP4+xwkiX+DkxoTmU
         oUADdUYZWvo4xLEe/ketvqCiaU8a+3OCzpOKrGpMrJGYBwpvEGX6XSSNHLZWFcU2X7TC
         jj25jZiIVlFDyUJSiypjF1V9/fa/Dgu3mUTK1rUQ58Vb8FuZhoAbB5c9+aATdf/ChsXc
         Q4XuaYll7eEsPbQ6cGE9NKmGqBEeO0LemWliMqery9Wd3BlTVzcJ9SoUSiFGV5PSv5QE
         Cv2c0oHGtxc5O6dPI6uIooibj8AS92yhHKRhG0BC8I8m/SwEttKDQ7GJ2zdJZc3ETrM1
         7pxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=DlB850hgGylIDzcxbcmsjTIiY9Q2nNcIpGlmLOyV0vQ=;
        b=OgRzpzOGifG7aDSLf1rejoueF62w6m9S/KpZjJfCUjLVDJ/TPKMMs6CY5MCE/ogxiN
         fnRf2D+/6wbxmAA2vghH1oBt88siYAzty7Z5yV6BuX0RlSYunmmmLsp6N58TMntdm1HT
         WsL/4JdvrWtffAQ1g1YJpwVXdfhJGoZooLQcCD2dIBrts3/2JDPGi58JT2E7nm6n4sBt
         kQlpRm+1c0ivk1avGYTx/MysNkcZxDKOXSpaZpDRYfKqpK+vZY+8L/i8WflYFt9cjeLB
         VUI8Wn++DJ2dUGUWkzNmG73y0BPwJEW/U95AoJJJy2f9juC3eBqP1peKTuIsYUhk+V61
         ZEOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=mFZIq+O3;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DlB850hgGylIDzcxbcmsjTIiY9Q2nNcIpGlmLOyV0vQ=;
        b=HFEuU6Mei3uovPCD+t9/q5D2Rgd99zOBJyzPak58qzxnsX03NbwEMgn++EzSVnWdlq
         sOvcrvXz4W03UicgquZEyPPMfzzAMvmoKK33fO8rVg3bdRqeXWX4/3Zs7n38ubXp939n
         SMvtPtysUXScjdrTaW5aYraOJGPaFSyMntzn6kxgEmt22/LTA22vbkGA631AXRshxt61
         wfSyR15QdgdAcXtQrEwWP8qr8at/Se9z9HT4Wo/ElDUdH1O01Iku126rQvRcENaLfj9r
         WOymH+FQUuP2aptNjZCggjA9WWFcLYULbC3e14/fRGdZYORwR2zaszlr2wqbQl1CG4UM
         gvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DlB850hgGylIDzcxbcmsjTIiY9Q2nNcIpGlmLOyV0vQ=;
        b=PkoV3BLonJSiIy4oFVmRgcwvF/VYffE7BiXetYUpnCeHcJl75hTa0tZ8cU2+oEWSg7
         RjbUhaiW39XJp3UEP3pbrnnaPwTaddJOa/k2M2+qloi86zqRSkTH1x+jbxJ21gWjN3+M
         9blqTS72AWev/R0BzC+LumPGBe0VYtV/fbQXRbUqFTaPw4G+TsU2NfmYFDlHiyPwtYOp
         Djwx/8+CFYsFsB5171++YfsVgr+MWlhBrNdpXi5Io277E/cmB9tpdj2Rde9sF20SwSQ/
         IXQY5Ql2yfxUgd8H9XS7GZLeGXho5+HpuR/TLQgb/gDthZs7FvF33HG0RH8dNVPdcZ+o
         k0lQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVp72F4uDulgE3b23bKPG2lZcZ1sZv78CmiY78hX0DsDuuq1sFO
	AUAa9Vn7lvxaPgJiyE0GyZ4=
X-Google-Smtp-Source: APXvYqzNU0ii3ZOnaYbpEEQU9R6qNrXxNU1cXVLaGaXYqtXBFSokVS9brCNBYLidNsyKBpnSMkGKfw==
X-Received: by 2002:a17:90b:3007:: with SMTP id hg7mr3998322pjb.73.1574142340164;
        Mon, 18 Nov 2019 21:45:40 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:bb90:: with SMTP id m16ls4661103pls.13.gmail; Mon,
 18 Nov 2019 21:45:39 -0800 (PST)
X-Received: by 2002:a17:90a:bc48:: with SMTP id t8mr3907265pjv.131.1574142339803;
        Mon, 18 Nov 2019 21:45:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574142339; cv=none;
        d=google.com; s=arc-20160816;
        b=CUgsMbT2QJa3GBXxDZfAHHbeCbPMV6jZLQOy5242Ytd4AlmhLCXex2QYtdcLIPSGPN
         SDDxee7yoJhgK9G4hXCaIaF16YvALaZOJGvw7O+mbaKDYYmFauSZkyc7afDJlgmx6f63
         TfQq6QiunPU/TWXCCwbrdW3cxqCOd9cA4bRRrcWb/tQEtHWuLrHOmssC0vl3FCqAMeWF
         uQq4Em+t61pbNWwHzi5mlIn/5RRZAk2TCiIPlVc/n4CjfomZOU7djwyrxE5I7u2xbRg0
         3VmEx/9RXUf61/gM8rGnPNO7EWJYLA8ax1IX3eJc4CVmPB40HWeVyvfAsYZ4llNsYbZi
         Akmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=bCVMSZ6jkWJFaA+jPx7+kNzSo6CkJF8NrpPhqZTkoTw=;
        b=RNML4++da5CMCLg5U9rlRkNMNMmIs8+p837wYGBv0NTL4zI0FFNqh90SXMSb0s9NBK
         64Sl6aXXeKmH3bORugPRJ0qgEqdvRP8efKhlUrM+H+39L1+bYbBEi1pHqvBfAwtWBmGY
         Y2w8xYUBygJd7k1giXvs80t3d2gGb1ijMbIm5cw2K5J01k5T/z/sO3bryBI4x+gOb1oj
         9PmeSPWevR2Sxymp6dmkRbP2ViEyluvyt4ihk4/fUpG0OOTsHg8JYZaAmj5m7GPzXL4v
         3gYnskVB2S0WuZ89P4cjJAzmDUAxG3XVeo0XTN2irqBO66oUPnIyHgVUhev9C+HCXYk8
         BY8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=mFZIq+O3;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id j12si45716pje.0.2019.11.18.21.45.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 21:45:39 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAJ5hvkq132131;
	Tue, 19 Nov 2019 05:45:34 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 2wa92pmht2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Nov 2019 05:45:34 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAJ5hsM2167253;
	Tue, 19 Nov 2019 05:45:33 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2wc0afsb14-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Nov 2019 05:45:33 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAJ5jW9f011376;
	Tue, 19 Nov 2019 05:45:32 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 18 Nov 2019 21:45:32 -0800
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
        martin.petersen@oracle.com, open-iscsi@googlegroups.com,
        Nick Black <nlb@google.com>, kernel@collabora.com,
        Salman Qazi <sqazi@google.com>, Junho Ryu <jayr@google.com>,
        Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH] iscsi: Don't destroy session if there are outstanding connections
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191115032143.2217-1-krisman@collabora.com>
Date: Tue, 19 Nov 2019 00:45:29 -0500
In-Reply-To: <20191115032143.2217-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Thu, 14 Nov 2019 22:21:43 -0500")
Message-ID: <yq1y2wch11i.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=871
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911190053
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=942 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911190053
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=mFZIq+O3;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Gabriel,

> A faulty userspace that calls destroy_session() before destroying the
> connections can trigger the failure.  This patch prevents the issue by
> refusing to destroy the session if there are outstanding connections.

Ditto. Please send to linux-scsi@vger.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1y2wch11i.fsf%40oracle.com.
