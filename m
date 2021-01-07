Return-Path: <open-iscsi+bncBDZ5D6GN2YDBBOW23T7QKGQEATHNIZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-f186.google.com (mail-pg1-f186.google.com [209.85.215.186])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A112ED3BD
	for <lists+open-iscsi@lfdr.de>; Thu,  7 Jan 2021 16:48:12 +0100 (CET)
Received: by mail-pg1-f186.google.com with SMTP id j37sf4993945pgb.9
        for <lists+open-iscsi@lfdr.de>; Thu, 07 Jan 2021 07:48:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610034491; cv=pass;
        d=google.com; s=arc-20160816;
        b=kvFuUaSQto7w+wFCtpj9lZU8A32I+GLSh2VnHUSR8r9kTZJNlq/diGsr5UYZ6l9v5/
         5SE02kCzkF2xmN/58xxSfm98oLhnaiGFLaBl1+Q3FEsK4BPSzw6C0AVoelXRNSDUWbE8
         ODUBIG99cxg6VNeeHCxCuHNPPXOvLrYq0MGzYsu6empa08B/nKkgR/a64/aLeeqf3VOK
         Lo+68C4EOrh876XA/gVyGOhTDxb+cGKFeicS9qsFmMIugny8WHUomIkX6tQBJ9RrxoSF
         VDRs19Qz3gp6kig+1M8lcjYwgW8UHE34IzVypvVhsPNlbPemmC8jta3mblJ1h+fCVHL3
         wUaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:references:subject:cc:to:sender:from:date:message-id
         :mime-version;
        bh=MTgR/CziBp1T0+TwSYcsKqg0nbVJxq9Osfz2qpYV4l8=;
        b=lUumkz5kzUUkdvU5sMPGD9v6SABlBiy/VtwMj295Rl21qLuqyiAmeg9eBdU40zL0vs
         tQmh6EhtiqLFT7v89r28MxxJzBN5J3CjbXbTQOhC3npxlcZ6ZFu/1n9vSF14JdpsnH0L
         YalwN6M9r2py0pzYwsOOVwSnxMbA+mWXZgH/C1CP6JkdiO0+jcXlaet345TmsOK3DUNf
         UNAjpRQykZ1U/WZD7yh/cN0qtmo4M5Scz/gXG5Lo77vsmhV4J3iasvLTcED+6gmDD4RE
         bZhxYqNSE7FgPVsYbmhGpKtqAIA0fm/+lN3syvMHonpsUFgmsdbesVcaF0yqKScq82Hm
         4xZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=WsNcydjI;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:from:sender:to:cc
         :subject:references:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MTgR/CziBp1T0+TwSYcsKqg0nbVJxq9Osfz2qpYV4l8=;
        b=LvpFmkyyFPU3X9F/xlukt0NzTPCu5+TY6+x8pCDKJ1AWZ7ihnO9FTS7FpbPtdavVqs
         pIlRJ+FmbCaoi5ycPQLrW6Ehzx8+bjeCcXFWaw1wjQDkqUcO0WlZKPwAnKeME6G6gvPM
         /bz/Ay426gJY/uDaRPpc1UpGBZkzs98rn3lTuN73juWzgfRSHHsNYzHpW2SRHqg941zz
         UHCcybCvK+5yBPFtlmPbz8QBw+CJtOHS9DYj67cJrybMWrxvDJz6D5JTu0seaOWxWS2m
         GmSgyjIwqn5D9uovicZOenxe5v9DQaYyKOiR78oC8e0KPmd7bLfVayu0o2lIqahyg+gi
         Snmw==
X-Gm-Message-State: AOAM533MiDHpzPdTOVHpML0fxSpuCN/L0yYTBpQqHpgurU1Ls6EFdC7x
	OfwffBwLeInxisHUQjS+aPU=
X-Google-Smtp-Source: ABdhPJx9m0jE6c1dbWoWONW2XWu1N0nPWdNYu6fNb24C8mK93XTSargN0i3ONERiDxQUKuUiC17OSg==
X-Received: by 2002:a17:902:9686:b029:dc:3372:6e14 with SMTP id n6-20020a1709029686b02900dc33726e14mr9518491plp.24.1610034491230;
        Thu, 07 Jan 2021 07:48:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:5c85:: with SMTP id q127ls2674672pfb.11.gmail; Thu, 07
 Jan 2021 07:48:10 -0800 (PST)
X-Received: by 2002:a63:e22:: with SMTP id d34mr2433011pgl.142.1610034490178;
        Thu, 07 Jan 2021 07:48:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610034490; cv=none;
        d=google.com; s=arc-20160816;
        b=vudB70WvZtoP77fBV4KOVnd0aau4LQuzqWydRHfHPuhwh3H8CzvX8wJs+SWZl0/JAq
         jcRHb9rDl6wq2dFtcZpfbREqC0t81l1hLIdG7oInpE34h0N08W0gRHAvLCcgqhHv50Yk
         f8a6hIjiHtLbAIrIfF1hR6p/YKBZS//1VM52gX5aawTtbeMgp9Bv/LTU4OCwhqmn8hpX
         W0SRvu6E6J2pxwbZzfwKwnHVwrwajFemy4UTGTqfQIZyUr0oeRxtnKUzl570p1bONHzR
         8pCmgDg1XGfYGgP6Br+Boxzsm1AFTeUzm9zD5y2glxty5So8ThuspFjPOb9lxjJ9HS+X
         SdUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :sender:from:date:message-id:mime-version:dkim-signature;
        bh=HEo/4+hyn0YdKS47Mma7PweDhqDTetKtGjZMclPyJlA=;
        b=ikKSykCXbKb7CRh7+2crhKwdYQ1bma3SQxnhLPYZzRYKFo+yAUS+wOhzP/Lye4SqAe
         Ojf/me2UecQbFFXwA/Bb5XXu4gmzoTe8AbHFJ/MAm29fwj2zoed/TlosCLC1qbrXHit/
         Bbi5ZrnrJQ9gBi2caLCz72NFRkkgLXobqtdtkUpbhRd9Vx92JjbYWR1BtcJqQh29A9jD
         T1br1A3pFu1Nj+lbJ+MvoZpg7s0r0ZaedA1Dxy+f/wAPwGJKSjoETyFUedCD5qR8WnmT
         7LWqij/THxAzrZkSHQfZwbHkH6Xmh1gvIjnXT+0Belvgv8ylmGwj52FXTBn2Oxp8UOXn
         eZDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=WsNcydjI;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id o14si321327pjt.0.2021.01.07.07.48.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jan 2021 07:48:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gulam.mohamed@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 107FdsMl049661;
	Thu, 7 Jan 2021 15:48:08 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 35wepmcxk7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 07 Jan 2021 15:48:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 107FVjkM115576;
	Thu, 7 Jan 2021 15:48:08 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 35w3g2w6sb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 07 Jan 2021 15:48:07 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 107Fm52W012821;
	Thu, 7 Jan 2021 15:48:06 GMT
MIME-Version: 1.0
Message-ID: <0abfcf5b-5ab8-4968-bf6d-eb4dee32e2f4@default>
Date: Thu, 7 Jan 2021 15:48:02 +0000 (UTC)
From: Gulam Mohamed <gulam.mohamed@oracle.com>
Sender: Gulam Mohamed <gulam.mohamed@oracle.com>
To: Michael Christie <michael.christie@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James
 E.J. Bottomley" <jejb@linux.ibm.com>,
        Martin Petersen
 <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, Junxiao Bi
 <junxiao.bi@oracle.com>
Subject: RE: [PATCH] iscsi: Do Not set param when sock is NULL
References: <1a8aaa17-b1a3-4d6a-b87a-ff49d61a0d0b@default>
 <9df96d73-015c-4de6-96fa-2f315b066909@default>
 <05277786-2E1F-432D-AE73-F39565C6BEA4@oracle.com>
In-Reply-To: <05277786-2E1F-432D-AE73-F39565C6BEA4@oracle.com>
X-Priority: 3
X-Mailer: Oracle Beehive Extensions for Outlook 2.0.1.9.1  (1003210) [OL
 16.0.5095.0 (x86)]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 adultscore=0
 phishscore=0 spamscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101070097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 clxscore=1011 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101070097
X-Original-Sender: gulam.mohamed@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=WsNcydjI;
       spf=pass (google.com: domain of gulam.mohamed@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=gulam.mohamed@oracle.com;
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

Hi Michael,

             As per your suggestions in below mail, I have completed the su=
ggested changes and tested them. Can you please review and let me know your=
 comments? Here is the patch:

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
1. This Kernel panic could be due to a timing issue when there is a race be=
tween the sync thread and the initiator was processing of a login response =
from the target. The session re-open can be invoked from two places
  a. Sessions sync thread when the iscsid restart
  b. From iscsid through iscsi error handler 2. The session reopen sequence=
 is as follows in user-space (iscsi-initiator-utils)
   a. Disconnect the connection
   b. Then send the stop connection request to the kernel which releases th=
e connection (releases the socket)
   c. Queues the reopen for 2 seconds delay
   d. Once the delay expires, create the TCP connection again by calling th=
e connect() call
   e. Poll for the connection
   f. When poll is successful i.e when the TCP connection is established, i=
t performs
      i. Creation of session and connection data structures
      ii. Bind the connection to the session. This is the place where we as=
sign the sock to tcp_sw_conn->sock
      iii. Sets the parameters like target name, persistent address etc .
      iv. Creates the login pdu
       v. Sends the login pdu to kernel
      vi. Returns to the main loop to process further events. The kernel th=
en sends the login request over to the target node
   g. Once login response with success is received, it enters into full fea=
ture phase and sets the negotiable parameters like max_recv_data_length, ma=
x_transmit_length, data_digest etc .
3. While setting the negotiable parameters by calling "iscsi_session_set_ne=
g_params()", kernel panicked as sock was NULL

What happened here is
---------------------
1. Before initiator received the login response mentioned in above point 2.=
f.v, another reopen request was sent from the error handler/sync session fo=
r the same session, as the initiator utils was in main loop to process furt=
her events (as mentioned in point 2.f.vi above).
2. While processing this reopen, it stopped the connection which released t=
he socket and queued this connection and at this point of time the login re=
sponse was received for the earlier on

Fix
---

1. Create a flag "set_param_fail" in iscsi_cls_conn structure 2. On ep_disc=
onnect and stop_conn set this flag to indicate set_param calls for connecti=
on level settings should fail 3. This way, scsi_transport_iscsi can set and=
 check this bit for all drivers 2. On bind_conn clear the bit

Signed-off-by: Gulam Mohamed <gulam.mohamed@oracle.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 6 ++++++  include/scsi/scsi_transpor=
t_iscsi.h | 3 +++
 2 files changed, 9 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transp=
ort_iscsi.c
index 2e68c0a87698..15c5a7223a40 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2473,6 +2473,8 @@ static void iscsi_if_stop_conn(struct iscsi_cls_conn =
*conn, int flag)
 	 * it works.
 	 */
 	mutex_lock(&conn_mutex);
+	if (!test_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail))
+		set_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail);
 	conn->transport->stop_conn(conn, flag);
 	mutex_unlock(&conn_mutex);
=20
@@ -2895,6 +2897,8 @@ iscsi_set_param(struct iscsi_transport *transport, st=
ruct iscsi_uevent *ev)
 			session->recovery_tmo =3D value;
 		break;
 	default:
+		if (test_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail))
+			return -ENOTCONN;
 		err =3D transport->set_param(conn, ev->u.set_param.param,
 					   data, ev->u.set_param.len);
 	}
@@ -2956,6 +2960,7 @@ static int iscsi_if_ep_disconnect(struct iscsi_transp=
ort *transport,
 		mutex_lock(&conn->ep_mutex);
 		conn->ep =3D NULL;
 		mutex_unlock(&conn->ep_mutex);
+		set_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail);
 	}
=20
 	transport->ep_disconnect(ep);
@@ -3716,6 +3721,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghd=
r *nlh, uint32_t *group)
 		ev->r.retcode =3D	transport->bind_conn(session, conn,
 						ev->u.b_conn.transport_eph,
 						ev->u.b_conn.is_leading);
+		clear_bit(ISCSI_SET_PARAM_FAIL_BIT, &conn->set_param_fail);
 		mutex_unlock(&conn_mutex);
=20
 		if (ev->r.retcode || !transport->ep_connect) diff --git a/include/scsi/s=
csi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 8a26a2ffa952..71b1952b913b 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -29,6 +29,8 @@ struct bsg_job;
 struct iscsi_bus_flash_session;
 struct iscsi_bus_flash_conn;
=20
+#define ISCSI_SET_PARAM_FAIL_BIT	1
+
 /**
  * struct iscsi_transport - iSCSI Transport template
  *
@@ -206,6 +208,7 @@ struct iscsi_cls_conn {
=20
 	struct device dev;		/* sysfs transport/container device */
 	enum iscsi_connection_state state;
+	unsigned long set_param_fail; /* set_param for connection should fail=20
+*/
 };
=20
 #define iscsi_dev_to_conn(_dev) \
--
2.27.0

Regards,
Gulam Mohamed.

-----Original Message-----
From: Michael Christie=20
Sent: Tuesday, November 24, 2020 4:37 AM
To: Gulam Mohamed <gulam.mohamed@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>; Chris Leech <cleech@redhat.com>; James E=
.J. Bottomley <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@ora=
cle.com>; open-iscsi@googlegroups.com; linux-scsi@vger.kernel.org; linux-ke=
rnel@vger.kernel.org; Junxiao Bi <junxiao.bi@oracle.com>
Subject: Re: [PATCH] iscsi: Do Not set param when sock is NULL



> On Nov 4, 2020, at 11:40 PM, Gulam Mohamed <gulam.mohamed@oracle.com> wro=
te:
>=20
> Description
> =3D=3D=3D=3D=3D=3D=3D=3D=3D
> 1. This Kernel panic could be due to a timing issue when there is a race =
between the sync thread and the initiator was processing of a login respons=
e from the target. The session re-open can be invoked from two places
>          a.	Sessions sync thread when the iscsid restart
>          b.	From iscsid through iscsi error handler
> 2. The session reopen sequence is as follows in user-space (iscsi-initiat=
or-utils)
>          a.	Disconnect the connection
>          b.	Then send the stop connection request to the kernel which rel=
eases the connection (releases the socket)
>          c.	Queues the reopen for 2 seconds delay
>         d.	Once the delay expires, create the TCP connection again by cal=
ling the connect() call
>         e.	Poll for the connection
>          f.	When poll is successful i.e when the TCP connection is establ=
ished, it performs
> 	i. Creation of session and connection data structures
> 	ii. Bind the connection to the session. This is the place where we assig=
n the sock to tcp_sw_conn->sock
> 	iii. Sets the parameters like target name, persistent address etc .
> 	iv. Creates the login pdu
> 	v. Sends the login pdu to kernel
> 	vi. Returns to the main loop to process further events. The kernel then =
sends the login request over to the target node
> 	g. Once login response with success is received, it enters into full fea=
ture phase and sets the negotiable parameters like max_recv_data_length, ma=
x_transmit_length, data_digest etc .
> 3. While setting the negotiable parameters by calling=20
> "iscsi_session_set_neg_params()", kernel panicked as sock was NULL
>=20
> What happened here is
> --------------------------------
> 1.	Before initiator received the login response mentioned in above point =
2.f.v, another reopen request was sent from the error handler/sync session =
for the same session, as the initiator utils was in main loop to process fu=
rther events (as=20
> 	mentioned in point 2.f.vi above).=20
> 2.	While processing this reopen, it stopped the connection which released=
 the socket and queued this connection and at this point of time the login =
response was received for the earlier one


To make sure I got this you are saying before iscsi_sw_tcp_conn_stop calls =
iscsi_sw_tcp_release_conn that the recv path has called iscsi_recv_pdu righ=
t?


> 3.	The kernel passed over this response to user-space which then sent the=
 set_neg_params request to kernel
> 4.	As the connection was stopped, the sock was NULL and hence while the k=
ernel was processing the set param request from user-space, it panicked
>=20
> Fix
> ----
> 1.	While setting the set_param in kernel, we need to check if sock is NUL=
L
> 2.	If the sock is NULL, then return EPERM (operation not permitted)
> 3.	Due to this error handler will be invoked in user-space again to recov=
er the session
>=20
> Signed-off-by: Gulam Mohamed <gulam.mohamed@oracle.com>
> Reviewed-by: Junxiao Bi <junxiao.bi@oracle.com>
> ---
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c index=20
> df47557a02a3..fd668a194053 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -711,6 +711,12 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_=
cls_conn *cls_conn,
>        struct iscsi_tcp_conn *tcp_conn =3D conn->dd_data;
>        struct iscsi_sw_tcp_conn *tcp_sw_conn =3D tcp_conn->dd_data;
>=20
> +       if (!tcp_sw_conn->sock) {
> +               iscsi_conn_printk(KERN_ERR, conn,
> +                               "Cannot set param as sock is NULL\n");
> +               return -ENOTCONN;
> +       }
> +

I think this might have 2 issues:

1. It only fixes iscsi_tcp. What about other drivers that free/null resourc=
es/fields in ep_disconnect that we layer need to access in the set_param ca=
llback (the cxgbi drivers)?

2. What about drivers that do not free/null fields (be2iscsi, bnx2i, ql4xxx=
 and qedi) so the set_param calls end up just working. What state will user=
space be in where we have logged in, but iscsid also thinks we are in the m=
iddle of trying to login?

I think we could do:

1. On ep_disconnect and stop_conn set some iscsi_cls_conn bit that indicate=
s set_param calls for connection level settings should fail. scsi_transport=
_iscsi could set and check this bit for all drivers.
2. On bind_conn clear the bit.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/0abfcf5b-5ab8-4968-bf6d-eb4dee32e2f4%40default.
