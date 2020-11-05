Return-Path: <open-iscsi+bncBAABBGE5SH6QKGQEQP5EIEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-f192.google.com (mail-qk1-f192.google.com [209.85.222.192])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4C62A86D2
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Nov 2020 20:12:25 +0100 (CET)
Received: by mail-qk1-f192.google.com with SMTP id t63sf1568752qke.10
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Nov 2020 11:12:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604603545; cv=pass;
        d=google.com; s=arc-20160816;
        b=aO4Mbtvg8f/JHPeQ6sbOe2TIkwXxIjoUl+EeNYKmCM4u55DNpQQmtNoydpZW/0Rkn5
         E/ysN+1rTpp2WaCuAEEcgU8CwHGQYLY5WWqmvVuG2lmD6l8f0ljObW9Os3B0VcQw9JcH
         ecFciyL3tBDh7IJ163nKfIBnANuyLb2fOsirKxUCsxGhS/K2EM+hRgdFjNdyMiFmCGXW
         HWoPKxO/J7ilR+SSCIUKg08FrHb2vGEamAHOtncmyhHfe0DPgMVXTuNQokSdLXB7j4S1
         65q7hSIbWVfDwev0qtUFK0GikRXfmu4Ff7+B10vmrj9xcEMzhAxFW9PuBWefNjbeHx4j
         6LBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:references
         :subject:cc:to:sender:from:date:message-id:mime-version;
        bh=Yq1/Mn07xp6FWy8vFt1R81xyKkDxLLFM0BYIt8AbZMI=;
        b=Xbh+yBt5CJxf0DlsbA1xR33+LEP/InauuyjVGD+YhJ6KOvx1F4YAXNf96bwQVmndJp
         QHrTU52eUD4TQLPY3q5q8cutrjUMarPI757mAHFR2UmMq5hLoHDowryvhJyA5HdSzvI2
         BgE+b3P7zV4dllnVS3k4LtJJJwwEkESKp8f+bGmsGth5gea0F1ZnjlEEuQM57vJXGWcr
         kPTd013Adp5ymTMiBz3PSJAzjRs/2/rfvVYUbXq+7S4bTq+IHVTTyWP055haEuo85A0L
         Hjq+GmMq6ceZuFzQ0I+hrVnXWDToW9y0n5bElGJeUAG2x9V61EfoV7m0heWfR7ZgpqdT
         UPeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=nnJBTOrX;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:from:sender:to:cc
         :subject:references:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Yq1/Mn07xp6FWy8vFt1R81xyKkDxLLFM0BYIt8AbZMI=;
        b=aoH8RfAmA3x/5hMq7ButZ2XlgpXgDOYLsic3OIe4jN/1KfaikeHMMJU96AHbufmvTe
         FUMT/jr/elxp52Aq7vLTpVNXMSpD56S9Q7hWjTEo6jziVOic16sVHgoVFH0aBOKUn0qE
         w6cJ1vu5q1A8aN/R7oSB3v6V0YvworD+tt3NPiEhpHR+BiMwgLzu/iM8sg8RllYRGLSL
         DlZ/HKeqSYIqek8b8GLS5l7EQQI7AP2yDBtqmpKSVy26QMSe7glHBqT8gY1jK2nLelrs
         hdNPutbePNDzHbC7fDap8slYgsVXo2frejyopBDPWq+WNrIKCf5++mG+f1y0ahH4CieC
         /NcA==
X-Gm-Message-State: AOAM530u+K3SeuE1AlqlxsNaHX1kOsAw9HAabQfW0ce/SGppdgV9XMri
	eSW/s6A4UW1Ll2v9ZM/P8gA=
X-Google-Smtp-Source: ABdhPJyFJ7T6wYtp2Yr5HcL7OZZ2sDUf9JAdykJwT82FX1xv+yUpRpa1kcT7Yir1zkzSQ0CslvmjnQ==
X-Received: by 2002:aed:2064:: with SMTP id 91mr3467932qta.383.1604603544849;
        Thu, 05 Nov 2020 11:12:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a389:: with SMTP id m131ls790558qke.8.gmail; Thu, 05 Nov
 2020 11:12:24 -0800 (PST)
X-Received: by 2002:a37:4a4d:: with SMTP id x74mr3570636qka.55.1604603544439;
        Thu, 05 Nov 2020 11:12:24 -0800 (PST)
Received: by 2002:a37:9802:0:b029:15e:d70c:89db with SMTP id a2-20020a3798020000b029015ed70c89dbmsqke;
        Wed, 4 Nov 2020 21:41:00 -0800 (PST)
X-Received: by 2002:a05:6102:2417:: with SMTP id j23mr341742vsi.5.1604554859668;
        Wed, 04 Nov 2020 21:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604554859; cv=none;
        d=google.com; s=arc-20160816;
        b=dQ6p3B/Z19m7NoN6zAzhbUKgu8gUaa+ENgomAThJU2L66dDo2SZiQbSngUPjGRIGBS
         tLf6/oF0tJki4hvF0/unPXxqaTtpYEvu66jqWmYC+VKXcj92y+gyNhn4hXGAA93HpUVn
         cBUmlch7sttLdUHPi/9hVo28FgTaSjV7yPPXSGoXcg3saCryQJgr1YQdh4FwNEfvTvct
         SoEgSUNtsy2a5BrwU0aSnExiXacI+ElMBYEzA7OXLenx/20kpCOGoluYR2QceHkWLMI4
         jnydnN5J3dmq+4y71N31GUOYalQCgIm+AWl9PhFqvZYehVdnhkJt8/F+dqAS0poAnNfM
         YthA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :sender:from:date:message-id:mime-version:dkim-signature;
        bh=K8Kl2iHpO5POu3iueaA7vs9t7V/Id+v7k4XyYIiSXvY=;
        b=FG5GVhdPGBzyXPQiBr7jNntFjuMTdjApENi+1bf8Ha411Q7P2pWcf11XqOhWVn2tDq
         HJRIQy6T8AVvggy5GI+ArxfcfyqytBvIavXmkUrgfH+mlRFrlmRj7XwOLbTHfKFb2OBK
         cDVl0yqtHe+7SkcQIDMuipUSWYQhmao9loV0ORMWsil3eUr9WAvw+HNyu6bBEL1/4gmr
         RuwqZ1hnre6yzwtk6ryuIc0HRkEc1v3G9uABir6cR/PjNZenXxNRG1/zS0BMkFd6RmSP
         DjBisasasiG5E3Q0PoWwyKZj4FmT+n/H3Ayxpiss6QhHXxg2ID8I3mRrzRv6kznGK8Rt
         gJXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=nnJBTOrX;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id b16si51276vkn.5.2020.11.04.21.40.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 21:40:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gulam.mohamed@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A55SvfB162524;
	Thu, 5 Nov 2020 05:40:58 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 34hhw2t3kn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 05 Nov 2020 05:40:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A55UYKg008905;
	Thu, 5 Nov 2020 05:40:57 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3020.oracle.com with ESMTP id 34hw0m4e8m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Nov 2020 05:40:57 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0A55euWr018275;
	Thu, 5 Nov 2020 05:40:56 GMT
MIME-Version: 1.0
Message-ID: <9df96d73-015c-4de6-96fa-2f315b066909@default>
Date: Wed, 4 Nov 2020 21:40:54 -0800 (PST)
From: Gulam Mohamed <gulam.mohamed@oracle.com>
Sender: Gulam Mohamed <gulam.mohamed@oracle.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James
 E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen"
 <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Junxiao Bi <junxiao.bi@oracle.com>
Subject: [PATCH] iscsi: Do Not set param when sock is NULL
References: <1a8aaa17-b1a3-4d6a-b87a-ff49d61a0d0b@default>
In-Reply-To: <1a8aaa17-b1a3-4d6a-b87a-ff49d61a0d0b@default>
X-Priority: 3
X-Mailer: Oracle Beehive Extensions for Outlook 2.0.1.9.1  (1003210) [OL
 16.0.5056.0 (x86)]
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0 bulkscore=0
 mlxscore=0 suspectscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011050041
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 clxscore=1011 priorityscore=1501 impostorscore=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=999 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011050041
X-Original-Sender: gulam.mohamed@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=nnJBTOrX;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
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

Description
=========
1. This Kernel panic could be due to a timing issue when there is a race between the sync thread and the initiator was processing of a login response from the target. The session re-open can be invoked from two places
          a.	Sessions sync thread when the iscsid restart
          b.	From iscsid through iscsi error handler
2. The session reopen sequence is as follows in user-space (iscsi-initiator-utils)
          a.	Disconnect the connection
          b.	Then send the stop connection request to the kernel which releases the connection (releases the socket)
          c.	Queues the reopen for 2 seconds delay
         d.	Once the delay expires, create the TCP connection again by calling the connect() call
         e.	Poll for the connection
          f.	When poll is successful i.e when the TCP connection is established, it performs
	i. Creation of session and connection data structures
	ii. Bind the connection to the session. This is the place where we assign the sock to tcp_sw_conn->sock
	iii. Sets the parameters like target name, persistent address etc .
	iv. Creates the login pdu
	v. Sends the login pdu to kernel
	vi. Returns to the main loop to process further events. The kernel then sends the login request over to the target node
	g. Once login response with success is received, it enters into full feature phase and sets the negotiable parameters like max_recv_data_length, max_transmit_length, data_digest etc .
3. While setting the negotiable parameters by calling "iscsi_session_set_neg_params()", kernel panicked as sock was NULL

What happened here is
--------------------------------
1.	Before initiator received the login response mentioned in above point 2.f.v, another reopen request was sent from the error handler/sync session for the same session, as the initiator utils was in main loop to process further events (as 
	mentioned in point 2.f.vi above). 
2.	While processing this reopen, it stopped the connection which released the socket and queued this connection and at this point of time the login response was received for the earlier one
3.	The kernel passed over this response to user-space which then sent the set_neg_params request to kernel
4.	As the connection was stopped, the sock was NULL and hence while the kernel was processing the set param request from user-space, it panicked

Fix
----
1.	While setting the set_param in kernel, we need to check if sock is NULL
2.	If the sock is NULL, then return EPERM (operation not permitted)
3.	Due to this error handler will be invoked in user-space again to recover the session

Signed-off-by: Gulam Mohamed <gulam.mohamed@oracle.com>
Reviewed-by: Junxiao Bi <junxiao.bi@oracle.com>
---
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index df47557a02a3..fd668a194053 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -711,6 +711,12 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
        struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
        struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;

+       if (!tcp_sw_conn->sock) {
+               iscsi_conn_printk(KERN_ERR, conn,
+                               "Cannot set param as sock is NULL\n");
+               return -ENOTCONN;
+       }
+
        switch(param) {
        case ISCSI_PARAM_HDRDGST_EN:
                iscsi_set_param(cls_conn, param, buf, buflen);
-- 
2.18.4

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9df96d73-015c-4de6-96fa-2f315b066909%40default.
