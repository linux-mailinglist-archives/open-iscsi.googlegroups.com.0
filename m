Return-Path: <open-iscsi+bncBDVIJONZ3YDRBXUCZ3XAKGQEVTBHUDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B46E2101580
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Nov 2019 06:45:03 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id f66sf4674744ioa.21
        for <lists+open-iscsi@lfdr.de>; Mon, 18 Nov 2019 21:45:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574142302; cv=pass;
        d=google.com; s=arc-20160816;
        b=N2Z38YBGKEtYFkm1baC2ZjQhyuN5UDrqX1i/JmcvksHeEIyuOQ8hkRbBdLVAomXyRX
         Gys9FFTl3uq22+J0YupfO1pVlOD7AEvJ9tLKyVaZGRdoDdF751syPXtKQBu/hq76ueIO
         jGfN57+FReGD17oCkvxshPQFJg/Mw16SjVpGMSDaj7MIQKpjTN51F8aNbFCJHrURMpW6
         a+I5/kjMiJ5k8NjUmBzYb7s2+hGEoL3ofZp/0HTUnOHl85CiL8+P6avk5fizu8XZo1Li
         DlUpdJTcKF7gFCf1iqAg1IaWxGXRgiKFnvOXGGO2RqqQXbJBIruNutohxzwd5vaHRl4B
         0nwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=i1b2pch1WHBXUrrS2JS/u7qTzzG42HQ9uEYZoL6mRrY=;
        b=wdYcywDQ1C1HA0Zz+DIVAVhc/Fj5qK+GQHZAPpUSy0HcSJ9MXW2hr6h15JFroYnQKB
         F7hp5NNV6cc4Hs9Ok6ha7x6SW7PBYuw/0BMdUxX1p3CfqsV6PJa1LRz0FVvrm+LhyJIP
         nBe1ZO8BLwrONzKzwFS29+fOLEvhfjzjBKQrhBupLX6/xD7BzHxU/UOjInItJ6rRTrYa
         a5KQEQiXsM4naoe12Ffu8Jdn0+zyvA3yXUahJqRCVLHPI4k+7pSJe3O+L/VW9C3RjCB0
         wod7QW3Vtc3TaZ3pt6O2AQwdOXR2ifOicJmI6DHks9ZiEq750dYhTq2wcCEDykspCFzD
         CJow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=iOn5t1n7;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i1b2pch1WHBXUrrS2JS/u7qTzzG42HQ9uEYZoL6mRrY=;
        b=Tyr5Ok+hF65ZayIA5jsrjqy7FUruAbftCVojcHIKzgKkljI2jasJ7cmijNJD6uv4hg
         04A11MUeSQw7L0yDsByKyuzEwQmXtJPCeLFPHu8zXETr99DOmDSIDRVwdsSfag95fKjh
         aT9QAz3qKdqiAWFo5umtTPszyAH6u+kEfWhGM0HYblEEB5gIT+MFjlZYnrS/DaWi5aiC
         y7xWwv3vSGWlI2kfbetgknnnFYQdv3oqPOQslrcqVlqMsZq3VIPobgQAVtQ191EWnLu4
         piva4OT5L05Zo4dlHCFa8ptnc7qBM8Jk5PFFTRTmdrkDnLkJfTFLkU1APVL0U7rh6Oi4
         KmPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i1b2pch1WHBXUrrS2JS/u7qTzzG42HQ9uEYZoL6mRrY=;
        b=dieaT91a1P1oZP6LbLfsHyW0+LAXrp8f0Z0XBQq6SVFXwgInALhfzd2wUX+77YjGfq
         FevzVSZDo2RSButskI4aKLFuaC8Gv7gaARicGEOocIIRW53TQaJwhvuS8r1yozUy+fyW
         TwVSkMDEQ0+rlsZ/o5Ny4AdsCrtiPm2tpR652ikZ+0/nnEmDQs7PJQOO47/MR+r6cxCm
         O44CYaFk8mb4WOcskL43zVQnZWosob4rJouqi1tDJTqvQx76gVTQoXBGaxQDrD7vFmSn
         5RsFHMJ02EfJnV3RC5Owp/Z5y3f20GIdBSq/E7+70DpeLoK2hNZ+7yaTIbfqLkpMg9Vy
         vL5w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVGDAif4A8vGqZkPE0g8sqvhja8Ic9J1QleZVlcd2LDAhYq8r9x
	ejFlFOgf1r/Vws2hvzf0ewA=
X-Google-Smtp-Source: APXvYqzXihGRK+pgvgjB3I2JnKtkmgwLzgzjzBqul94R7k9Y23RzZ/mTdg2iXxNBv36yuLtZX36wFQ==
X-Received: by 2002:a92:79d2:: with SMTP id u201mr20822986ilc.103.1574142302333;
        Mon, 18 Nov 2019 21:45:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:4a07:: with SMTP id m7ls229167ilf.16.gmail; Mon, 18 Nov
 2019 21:45:01 -0800 (PST)
X-Received: by 2002:a92:6a10:: with SMTP id f16mr20353093ilc.175.1574142301834;
        Mon, 18 Nov 2019 21:45:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574142301; cv=none;
        d=google.com; s=arc-20160816;
        b=iCLB+ue3/O3mUV2tkAJjVMsoLFd1YeBSSTWM9yPHs/Xp/8RNHZ7Cq/a5is9hD6tPfn
         uMqTxMq5X/uYk4j2OOryjKrvNgri6V/0MT5SKeCwa333Yu3fr64a6zmydW3ZnA3MBk1F
         pjhQQ2TPGHj9M7n4arC0YC8kUNbyTtu+rcyFG942Di3KX9FCPTtRiiTCeZxMms740BqL
         MoYKo7O4NGcilsa5Nqi6VmhYOF0kl+0GzrQMJrtkmoZaCaJLrCfwp7sBVtmq2XgON7HL
         qgvYT9AHDvsgrslJeJexgxj3CqE7YfqFoXXAiNu1bgFaBBBpGF2TXCXO+gPDvRK5m0oY
         FfKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=jJOXmt+zRaHmRE5sRXuVkVkLrcAkKprXoSf9Tpj1ZYA=;
        b=WMYl7lpUQZkESq6pM1MmAfJStpviyWVGKFCanWp+4BaHQfbBPUdPuBMdlFbkmxd/JY
         nfl6JvDuLompKaf83kRG26t/boHDQkJa0P7p0MoxRfixFnuzLX/XuARtHUFqj8HaAeV5
         s1eCGn5Ohxoi/SunrtE7NjaQ2hIiCNM9c0P3iUVhnSvv8rak9Oin2ZRmEbSgGBIj/i1v
         fKwGJnRPjtt1nKK06XSUCx8PG2iFic/jAymLfFRybexafnjYX5TmTA87piI1hAdehwV1
         p+QDfE9rsUfNWlkjZEIbahglRr409keOjmcfY9KKZkykC36ekweFaieXgEp+pj/R0QXN
         PSig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=iOn5t1n7;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id k11si1222175ilg.4.2019.11.18.21.45.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 21:45:01 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAJ5i1Cf144379;
	Tue, 19 Nov 2019 05:44:57 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 2wa8htmmfq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Nov 2019 05:44:57 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAJ5hxrG167825;
	Tue, 19 Nov 2019 05:44:56 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2wc0afs8ke-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Nov 2019 05:44:56 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAJ5is3d010989;
	Tue, 19 Nov 2019 05:44:55 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 18 Nov 2019 21:44:54 -0800
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
        martin.petersen@oracle.com, open-iscsi@googlegroups.com,
        Anatol Pomazau <anatol@google.com>, kernel@collabora.com,
        Frank Mayhar <fmayhar@google.com>, Bharath Ravi <rbharath@google.com>,
        Khazhimsel Kumykov <khazhy@google.com>
Subject: Re: [PATCH] iscsi: Don't send data to unbinded connection
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191116004735.16860-1-krisman@collabora.com>
Date: Tue, 19 Nov 2019 00:44:51 -0500
In-Reply-To: <20191116004735.16860-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Fri, 15 Nov 2019 19:47:35 -0500")
Message-ID: <yq136ekifn0.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=954
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911190053
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911190053
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=iOn5t1n7;
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


Gabriel,

> If a faulty initiator fails to bind the socket to the iSCSI connection
> before emitting a command, for instance, a subsequent send_pdu, it
> will crash the kernel due to a null pointer dereference in
> sock_sendmsg(), as shown in the log below.  This make sure the bind
> succeeded before trying to use the socket.

Applied to 5.5/scsi-queue. But please make sure to send patch
submissions to linux-scsi@vger.kernel.org.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq136ekifn0.fsf%40oracle.com.
